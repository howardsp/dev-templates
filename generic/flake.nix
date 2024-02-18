{
  description = "Generic Enviroment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let      
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit overlays system; };
    in
    {              
        devShells.${system}.default = pkgs.mkShell {          
          packages = with pkgs; 
            [ 
                # packages to load
            ];
        };     
    };
}