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

  # Homelab: KVM/libvirt VMs for the sysadmin study plan
  virtualisation.libvirtd = {
    enable = true;
    qemu.swtpm.enable = true; # TPM for RHEL/UEFI guests
  };
  programs.virt-manager.enable = true;
  users.users.connor.extraGroups = [ "libvirtd" "kvm" ];

  # Runs 24/7 with the lid closed: never suspend
  services.logind.settings.Login = {
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
    HandleLidSwitchDocked = "ignore";
  };
  systemd.targets.sleep.enable = false;
  systemd.targets.suspend.enable = false;
  systemd.targets.hibernate.enable = false;
  systemd.targets.hybrid-sleep.enable = false;

  # SSH in from other machines to manage the lab
  services.openssh.enable = true;
}
