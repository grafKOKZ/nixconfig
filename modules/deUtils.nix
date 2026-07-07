{ config, lib, pkgs, ... }:
let
  sddm-astronaut = pkgs.sddm-astronaut.override {
  embeddedTheme = "pixel_sakura_static";
  };
in
{
  services.xserver.xkb.layout = "de";
  services.xserver.enable = true;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  hardware.bluetooth.enable = true;
  
  environment.systemPackages = with pkgs; [
    sddm-astronaut
  ];
  services.displayManager.sddm = {
    enable = true;
    extraPackages = [ pkgs.sddm-astronaut ];
    theme = "sddm-astronaut-theme";
  };
  networking.firewall = {
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };
}
