{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-server"; 
  
  environment.systemPackages = with pkgs; [
    jdk25
  ];
}
