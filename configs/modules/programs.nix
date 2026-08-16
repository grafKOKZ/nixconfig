{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libnotify
    kitty
    vlc
    pinta
    pcmanfm
    spotify
    discord
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.iosevka
  ];
  programs.firefox.enable = true;
  programs.localsend.enable = true;
}
