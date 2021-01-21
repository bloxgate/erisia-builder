import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-minecraft";
  # Commit hash for nixos-20.09 as of 2021-01-21
  # Obtained from https://status.nixos.org/
  url = https://github.com/nixos/nixpkgs/archive/646f528cce6db1f89f6e635a7589bf1be6169ffb.tar.gz;
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "1nkpk6dzwblb76fgd8grs4d4fkwlzb4kxp7kvhdp4jzvkks2g1v5";
})
