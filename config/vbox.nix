{
  imports = [
    ../nix/shared.nix
    ../nix/boot/grub.nix
  ];

  networking.hostName = "vbox";
}
