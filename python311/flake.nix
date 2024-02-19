{
  description = "Java development environment - Latest Version";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

    in
    {              
        devShells.${system}.default = pkgs.mkShell {
          packages = with pkgs; 
            [ 
                python311Full
                python311Packages.pip
                python311Packages.virtualenv
            ];            
        };
    };
}