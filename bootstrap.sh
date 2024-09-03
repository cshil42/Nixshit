#!/usr/bin/env bash

set -e

rm -f /etc/nixos/configuration.nix

text="{
  imports = [
    /home/hans/.dotfiles/nix/shared.nix
$(for i in "$@"; do echo "    /home/hans/.dotfiles/nix/modules/$i.nix"; done)
  ];
}"

echo "$text" > /etc/nixos/configuration.nix

nixos-rebuild switch

nix-shell -p stow --command "stow ."

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional
