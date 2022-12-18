# Python template for nix flakes

## How can I use this? (easy way)

Generate a new python project using nix flakes by running this command:

```
nix flake new yourNewPythonProjectName -t github:Quoteme/mach-nix-template/
```

__Node__: Exchange _yourNewPythonProjectName_ with the name of your project.

## How do I use this? (hard way)

The file `python/flake.nix` contains all the information on how to create a simple
python environment in nix using [mach-nix]( https://github.com/DavHau/mach-nix )
and nix flakes. Simply copy the code chunks below the comments from
this `python/flake.nix` into your `flake.nix`. This might result in errors
because you are missing the `flake.lock` file which is needed to tell
nix what version of python and system-software you want (see: [https://www.reddit.com/r/NixOS/comments/zo51xk/python_flake_and_direnv/](https://www.reddit.com/r/NixOS/comments/zo51xk/python_flake_and_direnv/)).

## Why does this exist?

Anyone who has tried to use python on NixOS knows what a pain it is to
use. Everything works fine as long as you use the python packages
provided in nixpkgs. But if you wish to use any python library not in nixpkgs
(say `sphinx-rtd-theme` from PyPi), you will have the worst user experience imaginable.

This is why I created this project! Finally, using Python on Nix is easy 😃!
