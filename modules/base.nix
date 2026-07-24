{ config, lib, pkgs, ... }:

{
  boot.loader = {
    systemd-boot.enable = false;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = false;
      extraConfig = '' set timeout_style=hidden '';
    };
    efi.canTouchEfiVariables = true;
    timeout = 3; 
  };

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  nixpkgs.config.allowUnfree = true;

  console = {
    font = "Lat2-Terminus16";
    keyMap = "de";
  };
  
  nix = {
    optimise.automatic = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 15d";
    };
  };

  networking.firewall = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    vim
    tree
    wget
    git
    zip
    unzip
    xdg-user-dirs
  ];

  users.users.klaas = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs;[
    ];
  };
}
