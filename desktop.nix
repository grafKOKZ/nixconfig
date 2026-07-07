{ config, lib, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/programs.nix
    ./modules/base.nix
    ./modules/hyprland.nix
    ./modules/deUtils.nix
    ./modules/users.nix
    #./modules/drivers.nix
  ];
  system.stateVersion = "26.05";
}
