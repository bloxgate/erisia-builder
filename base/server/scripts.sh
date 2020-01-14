say() {
  tmux send-keys -t @screenName@.0 "$@" ENTER
}

players() {
  curl -s http://localhost:@prometheusPort@/metrics | grep '^present' | grep -v 'FzdsPacket' | wc -l
}

