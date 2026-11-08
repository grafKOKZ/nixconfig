{ config, lib, pkgs, ... }:

{
  networking.hostName = "nix-desktop"; 
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.cpu.amd.updateMicrocode = true;
  powerManagement.cpuFreqGovernor = "performance";
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "klaas" ];
  services.printing.enable = true;

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
