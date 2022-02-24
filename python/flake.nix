{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    # This section will allow us to create a python environment
    # with specific predefined python packages from PyPi
    pypi-deps-db = {
      url = "github:DavHau/mach-nix/3.3.0";
    };
    mach-nix = {
      url = "github:DavHau/mach-nix/3.3.0";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pypi-deps-db.follows = "pypi-deps-db";
    };
  };

  outputs = { self, nixpkgs, flake-utils, mach-nix, ... }@attr:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
      # specify the base version of python you with to use
      # and prepare mach-nix for usage
      python = "python39";
      mach = import mach-nix { inherit pkgs python; };

      
      # create a custom python environment
      myPython = (mach.mkPython {
        requirements = ''
          numpy
          gkeepapi
        '';
      });
    in {
      devShell = pkgs.mkShell {
        nativeBuildInputs = [
          # Now you can use your custom python environemt!
          # This should also work for `buildInputs` and so on!
          myPython
        ];
      };
    }
    );
}
