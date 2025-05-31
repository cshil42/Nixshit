{
  imports = [ 
    /home/connor/.dotfiles/nix/shared.nix
    /home/connor/.dotfiles/nix/boot/grub.nix
  ];

  networking.hostName = "vbox";
}