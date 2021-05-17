import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-minecraft";
  # Commit hash for nixos-20.09 as of 2021-01-21
  # Obtained from https://status.nixos.org/
  url = https://github.com/NixOS/nixpkgs/archive/da7f4c4842520167f65c20ad75ecdbd14e27ae91.tar.gz;
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "0vdq6lkc1sqj85x8r8idpck3igjns8ix57fqf1r5pm4k0qhy7p2m";
})
