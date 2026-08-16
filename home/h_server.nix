{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    #file.".config/kitty/kitty.conf".source = ./qhd/kitty/kitty.conf;
    #file.".config/hypr/hyprland.lua".source = ./qhd/hypr/hyprland.lua;
    #file.".config/hypr/hyprpaper.conf".source = ./qhd/hypr/hyprpaper.conf;
    #file.".config/waybar/config.jsonc".source = ./qhd/waybar/config.jsonc;
    #file.".config/waybar/style.css".source = ./qhd/waybar/style.css;
    file.".config/fastfetch/config.jsonc".source = ./qhd/fastfetch/config.jsonc;
    #file.".config/rofi/config.rasi".source = ./qhd/rofi/config.rasi;
    #file.".config/swaync/config.json".source = ./qhd/swaync/config.json;
    #file.".config/swaync/style.css".source = ./qhd/swaync/style.css;
    file.".vimrc".source = ./qhd/.vimrc;
    file.".bashrc".source = ./qhd/.bashrc;
  };
}
