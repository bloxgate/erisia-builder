say() {
  tmux send-keys -t @tmuxName@:0 "$@" ENTER
}

players() {
  curl -s http://localhost:@prometheusPort@/metrics | grep '^present' | grep -v 'FzdsPacket' | wc -l
}

