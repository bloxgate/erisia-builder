import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-minecraft";
  # Commit hash for nixos-unstable as of 2020-02-05 (or so)
  url = https://github.com/nixos/nixpkgs/archive/a21c2fa3ea2b88e698db6fc151d9c7259ae14d96.tar.gz;
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "1z3kxlbz6bqx1dlagcazg04vhk67r8byihzf959c3m0laf2a1w7y";
})
