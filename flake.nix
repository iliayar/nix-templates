{
  description = "My flake templates";

  outputs = { self, ... }: {
    templates = {
      basic = {
        path = ./basic;
        description = "Basic empty flake";
      };
      python = {
        path = ./python;
        description = "Basic pure nix flake";
      };
      python-mach = {
        path = ./python-mach;
        description = "Basic pythone env with mach-nix";
      };
    };
  };
}
