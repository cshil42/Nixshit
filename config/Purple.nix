{ pkgs, lib, ... }:
{
  imports = [
    ../nix/shared.nix
    ../nix/boot/systemd.nix
    ../nix/gpu/nvidia.nix
    # ../nix/backup/usb.nix
  ];

  networking.hostName = "Purple";

  # linuxPackages_latest is 7.0 which breaks VirtualBox 7.2.6 module build;
  # use 6.12 LTS until VirtualBox gains Linux 7.0 support
  boot.kernelPackages = lib.mkForce pkgs.linuxPackages_6_12;

}
