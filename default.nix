with import ./nixpkgs {};
with stdenv;

with callPackage ./lib/lib.nix {};

let resources_12 = runLocally "resources-1.12" {
    } ''
      mkdir -p $out/resourcepacks $out/shaderpacks
      #ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
      #ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
      #ln -s $sphax $out/resourcepacks/Sphax.zip
    '';
   resources_10 = runLocally "resources-1.10" {
   } ''
     mkdir -p $out/resourcepacks
     #ln -s $ozocraft $out/resourcepacks/OzoCraft.zip
   '';
   resources_7 = runLocally "resources-1.7" {
   } ''
     mkdir -p $out/resourcepacks
     #ln -s $erisia $out/resourcepacks/erisia-pack.zip
   '';
   sprocket = callPackage ./lib/sprocket {};
in

rec {

  packs = {
    e26 = buildPack e26;
  };


  e26 = {
    name = "MCEternal";
    tmuxName = "e26";
    description = "E26: Perfodio Fabrico Aeternum";
    ram = "12000m";
    port = 25566;
    prometheusPort = 1223;
    forge = {
      major = "1.12.2";
      minor = "14.23.5.2854";
    };
    extraDirs = [
      ./base/mc-eternal
      ./base/erisia
    ];
    extraServerDirs = [
      ./base/server
    ];
    extraClientDirs = [
      resources_12
      ./base/client
    ];
    manifests = [
      ./manifest/e26.nix
    ];
    blacklist = [
    ];
  };


  ServerPack = buildServerPack rec {
    inherit packs;
    hostname = "madoka.brage.info";
    urlBase = "https://madoka.brage.info/pack/";
  };

  # To use:
  # (nix build -f . ServerPackLocal && cd result && python -m SimpleHTTPServer)
  ServerPackLocal = buildServerPack rec {
    inherit packs;
    hostname = "localhost:8000";
    urlBase = "http://" + hostname + "/";
  };

  web = callPackage ./web {};
}
