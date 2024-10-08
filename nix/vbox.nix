{
  imports = [ 
    /home/hans/.dotfiles/nix/modules/shared.nix
    /home/hans/.dotfiles/nix/modules/grub.nix
  ];

  networking.hostName = "nixos";
}