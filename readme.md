# Python template for nix flakes

## How do I use this?

The file `python/flake.nix` contains all the information on how to create a simple
python environment in nix using [mach-nix]( https://github.com/DavHau/mach-nix )
and nix flakes. Simply copy the code chunks below the comments from
this `python/flake.nix` into your `flake.nix`:

You can automate all this by 
creating a new python project using this project as a template:

```
nix flake new yourNewPythonProjectName -t github:Quoteme/mach-nix-template/3e941e598b7438abd5f22c795c378ce215430bff
```

## Why does this exist?

Anyone who has tried to use python on NixOS knows what a pain it is to
use. Everything works fine as long as you use the python packages
provided in nixpkgs. But if you wish to use any python library not in nixpkgs
(say `sphinx-rtd-theme` from PyPi), you will have the worst user experience imaginable.

This is why I created this project! Finally, using Python on Nix is easy 😃!
