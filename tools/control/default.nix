{ rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "control";
  version = "0.1";

  src = builtins.filterSource
    (path: type: type != "directory" || baseNameOf path == "src")
    ./.;

  cargoSha256 = "1al5ajrbl3qhzi6wbshwi23s5mqyx77g2ba8kdsapj267d4vc5nw";
}
