{ config, lib, pkgs, ... }:
   
{
  environment.systemPackages = with pkgs; [
    prismlauncher
    ffmpeg
    protonup-qt
  ];
  programs.gpu-screen-recorder.enable = true; 
  programs.steam.enable = true;
}
