{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
    swaynotificationcenter
    libnotify
    file-roller
    kitty
    vlc
    hyprpaper
    waybar
    gcc
    rofi
    pinta
    nwg-look
    pcmanfm
    spotify
    discord
    pavucontrol
    seahorse
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.iosevka
  ];
  programs.firefox.enable = true;
  programs.localsend.enable = true;
}
