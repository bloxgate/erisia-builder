{ rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "control";
  version = "0.1";

  src = builtins.filterSource
    (path: type: type != "directory" || baseNameOf path == "src")
    ./.;

  cargoSha256 = "1ysj7kvdhgc811sw8vcn3z707lj31jj25kwwmcbp6k5kk4w3h6p9";
}
