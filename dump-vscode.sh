#!/usr/bin/env bash

echo Dumping vscode extensions
code --list-extensions | tr '[:upper:]' '[:lower:]' > /home/hans/.dotfiles/.config/Code/User/extensions.txt
