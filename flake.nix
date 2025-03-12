{
  description = "NixOS System Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = [ 
          ./nixos/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager = {
	      useGlobalPkgs = true;
              useUserPackages = true;
	      extraSpecialArgs = { inherit inputs; };

              users.nikko = {
	        imports = [ ./home ];
	      };
	    };
          }
        ];
      };
    };
  };
}
