#!/bin/bash

ln -sf "$(pwd)/etc/nixos/configuration.nix" /etc/nixos/configuration.nix

nixos-rebuild switch

npm set prefix ~/.npm-global
npm i -g @commitlint/config-conventional
