{ config, lib, pkgs, ... }:
   
{
  environment.systemPackages = with pkgs; [
    prismlauncher
    protonup-qt
  ];
  
  programs.steam.enable = true;
}
