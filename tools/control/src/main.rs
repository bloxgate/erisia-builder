use reqwest;
use structopt::StructOpt;

use std::time::Duration;

type Result<T> = std::result::Result<T, Box<dyn std::error::Error + Send + Sync>>;

#[derive(Debug, StructOpt)]
#[structopt(version = "0.1", author = "Baughn", name = "control")]
struct Opts {
    #[structopt(name = "server", help = "Which server (tmux name) to work on")]
    server: String,

    #[structopt(name = "port", help = "Prometheus port for this server")]
    port: u16,

    #[structopt(subcommand)]
    cmd: Command,
}

#[derive(Debug, StructOpt)]
enum Command {
    Stop {
        #[structopt(short, default_value = "180")]
        time: u64,
    },
}

// Server toolbox
struct Server {
    tmux_id: String,
    prometheus_port: u16,
}

impl Server {
    async fn get(&self, metric: &str) -> Result<f64> {
        let body: String = reqwest::get(&format!(
            "http://localhost:{}/metrics",
            self.prometheus_port
        ))
        .await?
        .text()
        .await?;

        for line in body.split_terminator('\n') {
            let segment: Vec<&str> = line.split(' ').collect();
            if segment[0].starts_with(metric) {
                return Ok(segment[1].parse()?);
            }
        }
        Ok(0.0)
    }
    pub async fn players(&self) -> Result<u64> {
        let metric = self.get("present").await?;
        if metric == 0.0 {
            return Ok(0);
        } else {
            return Ok(metric as u64);
        }
    }

    pub fn send(&mut self, command: &str) -> Result<()> {
        std::process::Command::new("tmux")
            .args(&[
                "send-keys",
                "-t",
                &format!("{}:0", self.tmux_id),
                command,
                "ENTER",
            ])
            .output()?;
        Ok(())
    }

    // Stop command
    pub async fn stop(&mut self, grace_period: Duration) -> Result<()> {
        let second = Duration::from_secs(1);
        let mut elapsed = Duration::from_secs(0);

        while elapsed < grace_period {
            let players = self.players().await?;

            if players == 0 {
                break;
            }

            if elapsed.as_secs() % 60 == 0 {
                println!("{} players on server", players);
                self.send(&format!(
                    "say Server restarting in {} minutes, or when empty",
                    (grace_period - elapsed).as_secs() / 60
                ))?;
            }

            tokio::time::delay_for(second).await;
            elapsed += second;
        }

        self.send("save-on")?;
        self.send("save-all")?;
        tokio::time::delay_for(second * 5).await;
        self.send("stop")?;

        Ok(())
    }
}

#[tokio::main]
async fn main() -> Result<()> {
    let opts: Opts = Opts::from_args();
    let mut server = Server {
        tmux_id: opts.server.to_owned(),
        prometheus_port: opts.port,
    };

    match opts.cmd {
        Command::Stop { time } => server.stop(Duration::from_secs(time)),
    }
    .await
}
