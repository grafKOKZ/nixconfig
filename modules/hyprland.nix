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
}
