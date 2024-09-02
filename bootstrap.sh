#!/usr/bin/env bash

set -e

rm -f /etc/nixos/configuration.nix

text="{
  imports = [
    /home/hans/.dotfiles/shared.nix
$(for i in "$@"; do echo "    /home/hans/.dotfiles/modules/$i.nix"; done)
  ];
}"

echo "$text" > /etc/nixos/configuration.nix

nixos-rebuild switch

rm -f "/home/$(logname)/.config/autostart/144hz.desktop" 
rm -f "/home/$(logname)/.config/autostart/144hz.sh"

ln -s "/home/hans/.dotfiles/.config/autostart/144hz.desktop" "/home/$(logname)/.config/autostart/144hz.desktop" 
ln -s "/home/hans/.dotfiles/.config/autostart/144hz.sh" "/home/$(logname)/.config/autostart/144hz.sh"
ln -s "/home/hans/.dotfiles/.config/onedrive/config" "/home/$(logname)/.config/onedrive/config"

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional
