{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    prismlauncher
    tree
    wget
    fastfetch
    kitty
    hyprpaper
    waybar
    git
    rofi
    xdg-user-dirs
    pinta
    nwg-look
    zip
    pcmanfm
    spotify
    discord
    unzip
    sassc
    pavucontrol
    seahorse
    protonup-qt
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.iosevka
  ];
  programs.firefox.enable = true;
  programs.localsend.enable = true;
  programs.steam.enable = true;
}
