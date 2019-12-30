{ runCommand, jekyll }:

runCommand "erisia-website" {
  src = builtins.filterSource
    (path: type: type != "symlink")
    ./.;
  buildInputs = [ jekyll ];
} "cd $src; jekyll build --safe --trace -d $out"
