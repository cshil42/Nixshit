{ lib, ... }:
{
  imports = [
    ../nix/shared.nix
    ../nix/boot/systemd.nix
  ];

  networking.hostName = "Magenta";

  # shared.nix sets amdgpu kernel params for other machines — this one has Intel GPU only
  boot.kernelParams = lib.mkForce [ "kvm.enable_virt_at_load=0" ];

  # No AMD GPU on this machine — disable LACT daemon and Razer support
  systemd.services.lact.enable = lib.mkForce false;
  hardware.openrazer.enable = lib.mkForce false;

  # No VirtualBox on this machine
  virtualisation.virtualbox.host.enable = lib.mkForce false;
}
