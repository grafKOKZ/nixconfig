{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-server"; 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  environment.systemPackages = with pkgs; [
    jdk25
    tmux
  ];
  networking.firewall = {
    allowedTCPPorts = [ 28472 48222 ];
  };
}
