say() {
  screen -S @screenName@ -p 0 -X stuff  "$@"`echo -ne '\015'`
}

players() {
  curl -s http://localhost:@prometheusPort@/metrics | grep '^present' | grep -v 'FzdsPacket' | wc -l
}

