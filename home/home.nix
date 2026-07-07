{ config, pkgs, ... }:

{
  home = {
    username = "klaas";
    homeDirectory = "/home/klaas";
    stateVersion = "26.05";

    file.".config/kitty/kitty.conf".source = ./dotfiles/kitty/kitty.conf;
    file.".config/hypr/hyprland.lua".source = ./dotfiles/hypr/hyprland.lua;
    file.".config/hypr/hyprpaper.conf".source = ./dotfiles/hypr/hyprpaper.conf;
    file.".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
    file.".config/waybar/style.css".source = ./dotfiles/waybar/style.css;
    file.".config/fastfetch/config.jsonc".source = ./dotfiles/fastfetch/config.jsonc;
    file.".vimrc".source = ./dotfiles/.vimrc;
    file.".bashrc".source = ./dotfiles/.bashrc;
  };
}
