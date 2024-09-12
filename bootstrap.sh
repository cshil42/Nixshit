#!/usr/bin/env bash

set -e

sudo rm -f /etc/nixos/configuration.nix

text="{
  imports = [
    /home/hans/.dotfiles/nix/shared.nix
$(for i in "$@"; do echo "    /home/hans/.dotfiles/nix/modules/$i.nix"; done)
  ];
}"

sudo sh -c "echo '$text' > /etc/nixos/configuration.nix"

sudo nixos-rebuild switch

nix-shell -p stow --command "stow . --no-folding"

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional

nix-shell -p sassc --command "bash ./Colloid-gtk-theme/install.sh --tweaks nord -l -c dark"

bash ./Nordzy-icon/install.sh -c dark

while read in; do
  echo Reading $in from /home/hans/.dotfiles/dconf/${in////-}.ini
  dconf load $in < /home/hans/.dotfiles/dconf/${in////-}.ini
done < /home/hans/.dotfiles/dconf.txt

while read in; do
  echo Installing vscode extension $in
  code --install-extension $in
done < /home/hans/.dotfiles/.config/Code/User/extensions.txt
