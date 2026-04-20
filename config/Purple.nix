{
  imports = [
    ../nix/shared.nix
    ../nix/boot/systemd.nix
    ../nix/gpu/nvidia.nix
    # ../nix/backup/usb.nix
  ];

  networking.hostName = "Purple";
  
}
