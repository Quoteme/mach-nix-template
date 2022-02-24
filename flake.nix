{
  description = ''
  Please look inside the ./python folder. This file is only here, so
  the template option of `nix flake new` works!
  '';
  outputs = {self}: {
    templates = {
      python = {
        path = ./python;
        description = "A simple python template using mach-nix";
      };
    };
    defaultTemplate = self.templates.python;
  };
}
