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

       python311 = {
          path = ./python311;
          description = "Python 311 full enviroment";
        };

        java = {
          path = ./java;
          description = "Java development environment - Latest Version";
        };

        java8 = {
          path = ./java8;
          description = "Java development environment - Java Version 8";
        };

        java11 = {
          path = ./java11;
          description = "Java development environment - Java Version 11";
        };

        java17 = {
          path = ./java17;
          description = "Java development environment - Java Version 17";
        };

        general = {
          path = ./general;
          description = "Generic development / project enviroment";
        };

      };
    };
}
