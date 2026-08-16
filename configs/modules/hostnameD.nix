{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-desktop"; 
  boot.kernelPackages = pkgs.linuxPackages_zen;
  hardware.cpu.amd.updateMicrocode = true;
  powerManagement.cpuFreqGovernor = "performance";
}
