{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-laptop"; 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.cpu.intel.updateMicrocode = true;
  powerManagement.cpuFreqGovernor = "powersave";
  boot.kernelParams = [ "intel_idle.max_cstate=6" ];

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
}
