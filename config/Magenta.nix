{ lib, ... }:
{
  imports = [
    ../nix/shared.nix
    ../nix/boot/systemd.nix
  ];

  networking.hostName = "Magenta";

  # No AMD GPU on this machine — disable LACT daemon and Razer support
  systemd.services.lact.enable = lib.mkForce false;
  hardware.openrazer.enable = lib.mkForce false;

  # No VirtualBox on this machine
  virtualisation.virtualbox.host.enable = lib.mkForce false;
}
