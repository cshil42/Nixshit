{
  imports = [ 
    /home/hans/.dotfiles/nix/shared.nix
    /home/hans/.dotfiles/nix/boot/grub.nix
  ];

  networking.hostName = "vbox";
}