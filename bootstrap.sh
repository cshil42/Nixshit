#!/bin/bash

set -e

DIR="$( dirname -- "${BASH_SOURCE[0]}"; )";   # Get the directory name
DIR="$( realpath -e -- "$DIR"; )";    # Resolve its full path if need be
DIR="$(dirname "$DIR")"

rm /etc/nixos/configuration.nix

text="{
  imports = [
    $DIR/.dotfiles/shared.nix
$(for i in "$@"; do echo "    $DIR/.dotfiles/modules/$i.nix"; done)
  ];
}"

echo "$text" > /etc/nixos/configuration.nix

nixos-rebuild switch

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional
