#!/usr/bin/env bash

set -e

if [[ $# -eq 0 ]] ; then
  echo 'usage: bash bootstrap.sh <config>'
  exit 0
fi

nix-shell -p sassc --command "bash ./Colloid-gtk-theme/install.sh --tweaks nord -l -c dark"
bash ./Colloid-icon-theme/install.sh --scheme nord
(cd Future-cursors; bash install.sh)

sudo rm -f /etc/nixos/configuration.nix
sudo ln -s /home/hans/.dotfiles/config/$1.nix /etc/nixos/configuration.nix 

sudo nixos-rebuild switch

nix-shell -p stow --command "stow . --no-folding"

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional

while read in; do
  echo Installing vscode extension $in
  code --install-extension $in
done < /home/hans/.dotfiles/.config/Code/User/extensions.txt

nix-shell -p unzip --command "unzip /home/hans/.dotfiles/.config/JetBrains/settings.zip -o -d /home/hans/.config/JetBrains/settings"

while read in; do
  echo Installing idea extension $in
  idea-ultimate installPlugins $in
done <  /home/hans/.config/JetBrains/settings/installed.txt
