{
  imports = [ 
    /home/connor/.dotfiles/nix/shared.nix
    /home/connor/.dotfiles/nix/boot/systemd.nix
  ];

  networking.hostName = "framework";
}