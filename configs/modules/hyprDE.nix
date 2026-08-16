{ config, lib, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };
  services.blueman.enable = true;

  services.gnome.gnome-keyring.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  environment.systemPackages = with pkgs; [
    rofi
    seahorse
    waybar
    swaynotificationcenter
    file-roller
    nwg-look
    hyprpaper
    pavucontrol
  ];
}
