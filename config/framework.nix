{
  imports = [
    ../nix/shared.nix
    ../nix/boot/systemd.nix
  ];

  networking.hostName = "framework";
}
