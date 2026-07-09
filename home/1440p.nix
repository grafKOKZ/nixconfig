{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    file.".config/kitty/kitty.conf".source = ./1440dots/kitty/kitty.conf;
    file.".config/hypr/hyprland.lua".source = ./1440dots/hypr/hyprland.lua;
    file.".config/hypr/hyprpaper.conf".source = ./1440dots/hypr/hyprpaper.conf;
    file.".config/waybar/config.jsonc".source = ./1440dots/waybar/config.jsonc;
    file.".config/waybar/style.css".source = ./1440dots/waybar/style.css;
    file.".config/fastfetch/config.jsonc".source = ./1440dots/fastfetch/config.jsonc;
    file.".config/rofi/config.rasi".source = ./1440dots/rofi/config.rasi;
    file.".config/swaync/config.json".source = ./1440dots/swaync/config.json;
    file.".config/swaync/style.css".source = ./1440dots/swaync/style.css;
    file.".vimrc".source = ./1440dots/.vimrc;
    file.".bashrc".source = ./1440dots/.bashrc;
  };
}
