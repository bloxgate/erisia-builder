{ rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "control";
  version = "0.1";

  src = builtins.filterSource
    (path: type: type != "directory" || baseNameOf path == "src")
    ./.;

  cargoSha256 = "1kyhsgbv9bxbw3k6sxwzkxb1ix85ica43vwwkzyd5plk75jpqx6g";
}
