# .dotfiles

```bash
nix-shell -p git gh --command "gh auth login; gh repo clone aedans/.dotfiles"
cd .dotfiles
sudo bash ./bootstrap.sh
```
