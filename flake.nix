{
  description = "NixOS System Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zjstatus.url = "github:dj95/zjstatus";

    matugen.url = "github:InioX/matugen";

    tmux-sessionx.url = "github:omerxx/tmux-sessionx";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      x86-vm = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = [ 
          ./system/configuration.nix
          ./system/x86-vm-configuration.nix
          (import ./overlays)
          { networking.hostName = "x86-vm"; }
        ];
      };
    };
  };
}
