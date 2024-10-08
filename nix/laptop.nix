{
  imports = [ 
    /home/hans/.dotfiles/nix/modules/shared.nix
    /home/hans/.dotfiles/nix/modules/systemd-boot.nix
  ];

  networking.hostName = "thinkpad";
}