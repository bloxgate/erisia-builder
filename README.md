# Erisia server-builder <a href="https://travis-ci.org/Erisia/builder"><img align="right" src="https://travis-ci.org/Erisia/builder.svg?branch=master"></a>
Build scripts for the server

Make a server directory, then run update-and-start.sh using its relative path. Example:
```
$ mkdir erisia
$ cd erisia
$ git clone https://github.com/Erisia/builder.git git
$ git/update-and-start.sh
```

## Updating manifests

The .nix files used for building the modpack are generated by cursetool
from the .yaml files in `manifest/`, and should always be updated after
any change to the .yaml files.
```
$ cursetool/run.sh update manifest/e19.yaml
```

The Curse website occasionally breaks, causing mod pages to redirect to
themselves. Cursetool will use a cached value if this happens. In the event
that no cache can be found, it will backoff and retry until it can successfully
retrieve the mod page.

# License

Everything in this Git repository is MIT-licensed, with the exception
of the `third_party` directory and mods/configuration data in the `base`
directory; see third_party/README.md for details.

It isn't currently in shape for reuse, but if you wish to do so, make
sure to expunge base and third_party.
