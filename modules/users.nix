{ config, lib, pkgs, ... }:

{
  users.users.klaas = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs;[ 
    ];
  };
}


