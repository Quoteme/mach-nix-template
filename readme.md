# Python template for nix flakes

## How can I use this? (easy way)

Generate a new python project using nix flakes by running this command:

```
nix flake new yourNewPythonProjectName -t github:Quoteme/mach-nix-template/
```

__Node__: Exchange _yourNewPythonProjectName_ with the name of your project.

When you enter the folder this command creates, you can run `nix develop` to enter a development environment with python.

### Adding python packages

Enter the directory which the above command created. Inside of it there is a `flake.nix` file. Search for the string `requirements` and place all the Python dependencies you would like to have inside it. Make sure your package exists on PyPI. The string needs to be the name which your package is published as on PyPi.

Example:

```
requirements = ''
  numpy
  Sphinx
  sphinx-rtd-theme
  sphinx-autodoc-annotation
'';
```
See for example [sphinx-autodoc-annotation](https://pypi.org/project/sphinx-autodoc-annotation/) on PiPy.

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
