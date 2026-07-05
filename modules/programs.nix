{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    prismlauncher
    wget
    fastfetch
    kitty
    hyprpaper
    waybar
    git
    rofi
    thunar
    xdg-user-dirs
    pinta
    nwg-look
    zip
    pcmanfm
    unzip
    sddm-astronaut
    sassc
    blueman
    pavucontrol
    seahorse
    protonup-qt
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
  ];
}
