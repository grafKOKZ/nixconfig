{
  description = "First Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      modules = [ ./configurations/desktop.nix ];
    };
  };
}
