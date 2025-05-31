#!/usr/bin/env bash

echo Dumping vscode extensions
code --list-extensions | tr '[:upper:]' '[:lower:]' > /home/connor/.dotfiles/.config/Code/User/extensions.txt
