{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    file.".config/kitty/kitty.conf".source = ./1080dots/kitty/kitty.conf;
    file.".config/hypr/hyprland.lua".source = ./1080dots/hypr/hyprland.lua;
    file.".config/hypr/hyprpaper.conf".source = ./1080dots/hypr/hyprpaper.conf;
    file.".config/waybar/config.jsonc".source = ./1080dots/waybar/config.jsonc;
    file.".config/waybar/style.css".source = ./1080dots/waybar/style.css;
    file.".config/fastfetch/config.jsonc".source = ./1080dots/fastfetch/config.jsonc;
    file.".config/rofi/config.rasi".source = ./1080dots/rofi/config.rasi;
    file.".config/swaync/config.json".source = ./1080dots/swaync/config.json;
    file.".config/swaync/style.css".source = ./1080dots/swaync/style.css;
    file.".vimrc".source = ./1080dots/.vimrc;
    file.".bashrc".source = ./1080dots/.bashrc;
  };
}
