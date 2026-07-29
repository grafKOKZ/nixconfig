{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-laptop"; 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.cpu.intel.updateMicrocode = true;
  powerManagement.cpuFreqGovernor = "performance";
}
