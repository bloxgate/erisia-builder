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
    pub fn new(tmux_id: String, prometheus_port: u16) -> Result<Server> {
        let server = Server {
            tmux_id: tmux_id,
            prometheus_port: prometheus_port,
        };
        let _ = server.serverpid()?;
        Ok(server)
    }

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

    pub fn serverpid(&self) -> Result<u64> {
        let err = Err("server.pid does not match a running Erisia instance".into());

        let pid = std::fs::read_to_string("server.pid")?.trim().parse()?;
        // Confirm it's running, and isn't a pun.
        let procslurp = std::fs::read_to_string(&format!(
                "/proc/{}/cmdline", pid))?;
        let cmdline: Vec<&str> = procslurp.split('\0').collect();
        if let Some(bash_param) = cmdline.get(1) {
            let actual = std::path::PathBuf::from(bash_param);
            let mut expected = std::env::current_dir()?;
            expected.push("server/start.sh");

            if expected != actual {
                return err;
            }
            return Ok(pid);
        } else {
            return err;
        }
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
    let mut server = Server::new(
        opts.server.to_owned(),
        opts.port,
    )?;

    match opts.cmd {
        Command::Stop { time } => server.stop(Duration::from_secs(time)),
    }
    .await
}
