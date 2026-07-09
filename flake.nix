{
  description = "First Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        ./desktop.nix 
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true; 
            users.klaas = import ./home/1080p.nix;
            backupFileExtension = "backup";
          };
        }
      ];
    };
    nixosConfigurations.server = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        ./server.nix 
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true; 
            users.klaas = import ./home/1440p.nix;
            backupFileExtension = "backup";
          };
        }
      ];
    };
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        ./laptop.nix 
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true; 
            users.klaas = import ./home/1080p_laptop.nix;
            backupFileExtension = "backup";
          };
        }
      ];
    };
  };
}
