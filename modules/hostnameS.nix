{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-server"; 
  
  environment.systemPackages = with pkgs; [
    jdk25
    tmux
  ];
  networking.firewall = {
    allowedTCPPorts = [ 28472 48222 ];
  };
  services.openssh = {
    enable = true;
    ports = [ 48222 ];
    settings = {
      PubkeyAuthentication = true;
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
    };
  };
}
