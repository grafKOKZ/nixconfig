{ config, lib, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/programs.nix
    ./modules/base.nix
    ./modules/gaming.nix
    ./modules/hyprDE.nix
    ./modules/deUtils.nix
    ./modules/driversAMD.nix
    ./modules/hostnameD.nix
  ];
  system.stateVersion = "26.05";
}
