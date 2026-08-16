{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    file.".config/kitty/kitty.conf".source = ./fhd/kittyL/kitty.conf;
    file.".config/hypr/hyprland.lua".source = ./fhd/hyprL/hyprland.lua;
    file.".config/hypr/hyprpaper.conf".source = ./fhd/hyprL/hyprpaper.conf;
    file.".config/waybar/config.jsonc".source = ./fhd/waybarL/config.jsonc;
    file.".config/waybar/style.css".source = ./fhd/waybarL/style.css;
    file.".config/fastfetch/config.jsonc".source = ./fhd/fastfetchL/config.jsonc;
    file.".config/rofi/config.rasi".source = ./fhd/rofi/config.rasi;
    file.".config/swaync/config.json".source = ./fhd/swaync/config.json;
    file.".config/swaync/style.css".source = ./fhd/swaync/style.css;
    file.".vimrc".source = ./fhd/.vimrc;
    file.".bashrc".source = ./fhd/.bashrc_laptop;
  };
}
