{
  description = "templates for easily creating flake-driven environments";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = (import nixpkgs { inherit  system; });
    in
    {
      templates = rec {

        java = {
          path = ./java;
          description = "Java development environment";
        };

        java8 = {
          path = ./java8;
          description = "Java development environment";
        };

        java11 = {
          path = ./java11;
          description = "Java development environment";
        };

        java17 = {
          path = ./java17;
          description = "Java development environment";
        };

      };
    };
}
