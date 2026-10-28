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

  # Keep autoUpgrade (claude-code updates) from hammering this laptop's disk:
  # don't catch up missed runs at boot, and run at idle CPU/IO priority
  system.autoUpgrade.persistent = false;
  systemd.services.nixos-upgrade.serviceConfig = {
    Nice = 19;
    CPUSchedulingPolicy = "idle";
    IOSchedulingClass = "idle";
  };

  # Gamemode boosts CPU governor to performance while gaming — helps iGPU-heavy games
  programs.gamemode.enable = true;
}
