#!/usr/bin/env bash

NIXOS_LABEL="$(echo $1 | tr " " "-" | tr '[:upper:]' '[:lower:]')" nixos-rebuild switch
GENERATION="$(nix-env --list-generations --profile /nix/var/nix/profiles/system | grep current | awk '{print $1}')"
git commit -m "$1 ($GENERATION)"