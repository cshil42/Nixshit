# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "system-monitor@gnome-shell-extensions.gcampax.github.com" "native-window-placement@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "places-menu@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" "just-perfection-desktop@just-perfection" "dash-to-dock@micxgx.gmail.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "Vitals@CoreCoding.com" "appindicatorsupport@rgcjonas.gmail.com" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Nautilus.desktop" "discord.desktop" "slack.desktop" "code.desktop" "idea-community.desktop" "teams-for-linux.desktop" "steam.desktop" ];
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = false;
    };

    "org/gnome/shell/extensions/appindicator" = {
      tray-pos = "right";
    };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list = [ "firefox.desktop:1" "discord.desktop:1" "slack.desktop:1" "code.desktop:2" "idea-community.desktop:2" "teams-for-linux.desktop:1" "steam.desktop:3" ];
    };

    "org/gnome/shell/extensions/custom-accent-colors" = {
      accent-color = "blue";
      theme-flatpak = false;
      theme-gtk3 = false;
      theme-shell = false;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      apply-glossy-effect = false;
      background-color = "rgb(32,36,44)";
      background-opacity = 1.0;
      custom-background-color = true;
      custom-theme-customize-running-dots = false;
      custom-theme-shrink = false;
      dash-max-icon-size = 48;
      disable-overview-on-startup = false;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 0.9;
      hide-tooltip = false;
      icon-size-fixed = false;
      intellihide-mode = "ALL_WINDOWS";
      isolate-monitors = false;
      isolate-workspaces = false;
      max-alpha = 0.8;
      preferred-monitor = -2;
      preview-size-scale = 0.0;
      running-indicator-dominant-color = false;
      running-indicator-style = "DASHES";
      scroll-to-focused-application = true;
      show-favorites = true;
      show-mounts = false;
      show-running = true;
      show-show-apps-button = false;
      show-trash = false;
      show-windows-preview = true;
      transparency-mode = "FIXED";
      unity-backlit-items = false;
      workspace-agnostic-urgent-windows = true;
    };

    "org/gnome/shell/extensions/just-perfection" = {
      alt-tab-icon-size = 0;
      alt-tab-small-icon-size = 0;
      alt-tab-window-preview-size = 0;
      animation = 1;
      controls-manager-spacing-size = 0;
      dash-app-running = true;
      panel = true;
      panel-in-overview = true;
      panel-notification-icon = true;
      power-icon = true;
      show-apps-button = true;
      switcher-popup-delay = true;
      theme = false;
      window-maximized-on-create = false;
      window-picker-icon = true;
      workspace-popup = false;
      workspace-switcher-should-show = false;
    };

    "org/gnome/shell/extensions/trayIconsReloaded" = {
      icon-size = 16;
      tray-position = "right";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "shell-Dark-Nord";
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "_processor_usage_" "_memory_allocated_" ];
      position-in-panel = 0;
      show-fan = false;
      show-system = true;
      show-voltage = false;
      update-time = 1;
      use-higher-precision = true;
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

  };
}
