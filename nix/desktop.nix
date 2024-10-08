{
  imports = [ 
    /home/hans/.dotfiles/nix/modules/shared.nix
    /home/hans/.dotfiles/nix/modules/systemd-boot.nix
    /home/hans/.dotfiles/nix/modules/nvidia.nix
    /home/hans/.dotfiles/nix/modules/backup.nix
  ];

  networking.hostName = "orange";
}