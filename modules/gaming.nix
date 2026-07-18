{ config, lib, pkgs, ... }:
   
{
  environment.systemPackages = with pkgs; [
    prismlauncher
    lunar-client
    protonup-qt
  ];
  
  programs.steam.enable = true;
}
