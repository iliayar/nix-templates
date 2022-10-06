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
        description = "Basic python env with mach-nix";
      };

      nodejs = {
        path = ./nodejs;
        description = "Basic nodejs typescript env";
      };

      cxx = {
        path = ./cxx;
        description = "Basic C++ CMake project";
      };

      rust-bin = {
        path = ./rust;
        description = "Basic rust binary project";
      };
    };
  };
}
