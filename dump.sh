#!/usr/bin/env bash

while read in; do
    echo Dumping $in to /home/hans/.dotfiles/dconf/${in////-}.ini
    dconf dump $in > /home/hans/.dotfiles/dconf/${in////-}.ini
done < /home/hans/.dotfiles/dconf.txt

echo Dumping vscode extensions
code --list-extensions | tr '[:upper:]' '[:lower:]' > /home/hans/.dotfiles/.config/Code/User/extensions.txt
