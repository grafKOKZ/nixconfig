{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    file.".config/kitty/kitty.conf".source = ./fhd/kitty/kitty.conf;
    file.".config/hypr/hyprland.lua".source = ./fhd/hypr/hyprland.lua;
    file.".config/hypr/hyprpaper.conf".source = ./fhd/hypr/hyprpaper.conf;
    file.".config/waybar/config.jsonc".source = ./fhd/waybar/config.jsonc;
    file.".config/waybar/style.css".source = ./fhd/waybar/style.css;
    file.".config/fastfetch/config.jsonc".source = ./fhd/fastfetch/config.jsonc;
    file.".config/rofi/config.rasi".source = ./fhd/rofi/config.rasi;
    file.".config/swaync/config.json".source = ./fhd/swaync/config.json;
    file.".config/swaync/style.css".source = ./fhd/swaync/style.css;
    file.".vimrc".source = ./fhd/.vimrc;
    file.".bashrc".source = ./fhd/.bashrc;
    file.".local/share/PrismLauncher/themes/catppuccin/theme.json".source = ./fhd/PrismLauncher/themes/catppuccin/theme.json;
    file.".local/share/PrismLauncher/themes/catppuccin/themeStyle.css".source = ./fhd/PrismLauncher/themes/catppuccin/themeStyle.css;
  };
}
