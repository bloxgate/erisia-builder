import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-minecraft";
  # Commit hash for nixos-20.03 as of 2020-03-19
  # Obtained from https://status.nixos.org/
  url = https://github.com/nixos/nixpkgs/archive/b2935fbeceaea0b64df4401545d7c8ea29102120.tar.gz;
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "1z1631v7q2c8mavy7xnvfx0wz34zd49jqmjg66nk0qgsi605m3qp";
})
