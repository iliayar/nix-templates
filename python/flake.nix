{
  description = "Python pure nix template";
  inputs = { 
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
      let
        pkgs = import nixpkgs { 
          inherit system; 
        };
        pythonEnv = pkgs.python39.withPackages (pypkgs: with pypkgs; [
          # Packages here
        ]);
        in
        {
            devShell = pkgs.mkShell {
              buildInputs = with pkgs; [
                pythonEnv
                nodePackages.pyright
              ];
            };
          }
      );
}

