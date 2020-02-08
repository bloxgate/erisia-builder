with import ./nixpkgs {};

let builder = import ./default.nix;
in {
  # All server derivations. These are the ones that get run.
  servers = pkgs.recurseIntoAttrs (lib.mapAttrs (name: server: server.server) builder.packs);

  # The ServerPack recursively includes everything used client-side.
  # Let's build the website, too.
  inherit (builder) ServerPack web;

  # Build the control tool separately, just because.
  control = callPackage tools/control {};
}
