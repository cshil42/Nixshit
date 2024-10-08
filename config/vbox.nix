{
  imports = [ 
    /home/hans/.dotfiles/nix/shared.nix
    /home/hans/.dotfiles/nix/modules/grub.nix
  ];

  networking.hostName = "nixos";
}