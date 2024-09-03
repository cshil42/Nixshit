#!/usr/bin/env bash

NIXOS_LABEL="$(echo $1 | tr " " "-" | tr '[:upper:]' '[:lower:]')" nixos-rebuild switch
git add .
git commit -m "$1"