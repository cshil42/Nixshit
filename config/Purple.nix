{
  imports = [ 
    /home/connor/.dotfiles/nix/shared.nix
    /home/connor/.dotfiles/nix/boot/systemd.nix
    #/home/connor/.dotfiles/nix/gpu/nvidia.nix
    # /home/connor/.dotfiles/nix/backup/usb.nix
  ];

  networking.hostName = "Purple";
}
