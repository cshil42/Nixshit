# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/mutter" = {
      attach-modal-dialogs = false;
      center-new-windows = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
    };

    "org/gnome/mutter/wayland" = {
      xwayland-disable-extension = [ "Xtest" ];
    };

  };
}
