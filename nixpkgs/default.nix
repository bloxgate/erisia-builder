import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-stable-19.09";
  # Commit hash for nixos-19.09 as of 2020-02-08
  url = https://github.com/nixos/nixpkgs/archive/cae7840b7639c56ad619cb8fb8f921298ae385b7.tar.gz;
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "1mr5bp3vnag9nihcz1l0hdvm2n8n7lm84qh3cynbp00rcpwy0mhc";
})
