#!/usr/bin/env bash

set -e

DIR="$( dirname -- "${BASH_SOURCE[0]}"; )";   # Get the directory name
DIR="$( realpath -e -- "$DIR"; )";    # Resolve its full path if need be

rm -f /etc/nixos/configuration.nix

text="{
  imports = [
    $DIR/shared.nix
$(for i in "$@"; do echo "    $DIR/modules/$i.nix"; done)
  ];
}"

echo "$text" > /etc/nixos/configuration.nix

nixos-rebuild switch

rm -f "/home/$(logname)/.config/autostart/144hz.desktop" 
rm -f "/home/$(logname)/.config/autostart/144hz.sh"

ln -s "$DIR/.config/autostart/144hz.desktop" "/home/$(logname)/.config/autostart/144hz.desktop" 
ln -s "$DIR/.config/autostart/144hz.sh" "/home/$(logname)/.config/autostart/144hz.sh"
ln -s "$DIR/.config/hypr/hyprland.conf" "/home/$(logname)/.config/hypr/hyprland.conf"

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional
