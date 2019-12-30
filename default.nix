with import <nixpkgs> {};
with stdenv;

with import ./lib/lib.nix;
with import ./lib/sprocket;

let resources_12 = runLocally "resources-1.12" {
      sphax = fetchurl {
        url = https://madoka.brage.info/baughn/Sphax64x_FTB_Revelation.zip;
        sha256 = "03jdl0y2z00gnvc18gw69jcx08qigf6fbj09ii21gikh1fg4imfi";
      };
    } ''
      mkdir -p $out/resourcepacks $out/shaderpacks
      #ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
      #ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
      ln -s $sphax $out/resourcepacks/Sphax.zip
    '';
   resources_10 = runLocally "resources-1.10" {
     ozocraft = fetchurl {
       url = https://madoka.brage.info/baughn/OzoCraft-1.10a.zip;
       sha256 = "07xkg39idnp99gn4v7c2nc2sc9a948h16nsan4f68h3ncyshxbgs";
     };
   } ''
     mkdir -p $out/resourcepacks
     ln -s $ozocraft $out/resourcepacks/OzoCraft.zip
   '';
   resources_7 = runLocally "resources-1.7" {
     erisia = fetchurl {
       url = https://madoka.brage.info/baughn/erisia-pack.zip;
       sha256 = "17hy9hf948xkj3wgkr1q2q8qr2cqgkvy7d0zii89vrzai9xw0aif";
     };
   } ''
     mkdir -p $out/resourcepacks
     ln -s $erisia $out/resourcepacks/erisia-pack.zip
   '';
in

rec {

  packs = {
    bloof = buildPack bloof;
  };

  bloof = {
    name = "bloof";
    screenName = "bloof";
    description = "E24: Ad Perditio";
    ram = "12000m";
    port = 25523;
    prometheusPort = 1223;
    forge = {
      major = "1.12.2";
      minor = "14.23.5.2838";
    };
    extraDirs = [
    ];
    extraServerDirs = [
      ./base/server
    ];
    extraClientDirs = [
      resources_12
      ./base/client
    ];
    manifests = [
      ./manifest/bloof.nix
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
