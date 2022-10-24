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
        description = "Basic nodejs typescript env with example";
      };

      cxx = {
        path = ./cxx;
        description = "Basic C++ CMake project with example";
      };

      rust-bin = {
        path = ./rust;
        description = "Basic rust binary project with example";
      };

      java-gradle = {
        path = ./java-gradle;
        description = "Basic java gradle project with example";
      };

      java-gradle-empty = {
        path = ./java-gradle-empty;
        description = "Env with java, gradle";
      };

      java-maven-empty = {
        path = ./java-maven-empty;
        description = "Env with java, maven";
      };
    };
  };
}
