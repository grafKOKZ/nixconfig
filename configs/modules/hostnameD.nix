{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-desktop"; 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.cpu.amd.updateMicrocode = true;
  powerManagement.cpuFreqGovernor = "performance";
}
