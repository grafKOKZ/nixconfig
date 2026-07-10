
{ config, lib, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/programs.nix
    ./modules/base.nix
    ./modules/hyprDE.nix
    ./modules/deUtils.nix
    ./modules/gaming.nix
    ./modules/hostnameS.nix
  ];
  system.stateVersion = "26.05";
}
