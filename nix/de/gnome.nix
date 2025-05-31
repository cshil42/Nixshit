{ pkgs, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = (with pkgs; [
    gnome-text-editor
    gnome-tour
    gnome-console
    epiphany    # web browser
    # geary       # email client
    seahorse    # password manager
  ]);

  users.users.connor.packages = with pkgs; [
    gnome-terminal
    gnome-tweaks
    gnomeExtensions.just-perfection
    gnomeExtensions.dash-to-dock
    gnomeExtensions.vitals
    gnomeExtensions.appindicator
  ];

  home-manager.users.connor = {
    dconf.enable = true;

    imports = [
      ./dconf/-org-gnome-desktop-.nix
      ./dconf/-org-gnome-mutter-.nix
      ./dconf/-org-gnome-shell-.nix 
    ];
  };
}