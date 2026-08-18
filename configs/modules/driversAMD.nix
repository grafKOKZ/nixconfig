{ config, lib, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.cpu.amd.updateMicrocode = true;
  boot.kernel.sysctl = {
    "vm.vfs_cache_pressure" = 50;
    "vm.swappiness" = 10;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
