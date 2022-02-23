# Python template for nix flakes

## How do I use this?

This `flake.nix` contains all the information on how to create a simple
python environment in nix using [mach-nix]( https://github.com/DavHau/mach-nix )
and nix flakes. Simply copy the code chunks below the comments from
this `flake.nix` into your `flake.nix`:

## Why does this exist?

Anyone who has tried to use python on NixOS knows what a pain it is to
use. Everything works fine as long as you use the python packages
provided in nixpkgs. But if wish to use any python library not in nixpkgs
(say from PyPi), you will have the worst user experience imaginable.

This is why I created this simple to use `flake.nix` file. Now python
development and usage in nix should be easy :)
