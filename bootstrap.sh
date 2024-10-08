#!/usr/bin/env bash

set -e

if [[ $# -eq 0 ]] ; then
  echo 'usage: bash bootstrap.sh <config>'
  exit 0
fi

sudo rm -f /etc/nixos/configuration.nix
sudo ln -s /home/hans/.dotfiles/nix/$1.nix /etc/nixos/configuration.nix 

sudo nixos-rebuild switch

nix-shell -p stow --command "stow . --no-folding"

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional

nix-shell -p sassc --command "bash ./Colloid-gtk-theme/install.sh --tweaks nord -l -c dark"
(cd Nordzy-icon; bash install.sh -c dark)
(cd Future-cursors; bash install.sh) 

while read in; do
  echo Installing vscode extension $in
  code --install-extension $in
done < /home/hans/.dotfiles/.config/Code/User/extensions.txt
