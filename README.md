# .dotfiles

```bash
nix-shell -p git --command "git clone https://github.com/aedans/.dotfiles.git"
cd .dotfiles
```

## VirtualBox

```bash
sudo bash bootstrap.sh grub
```

## Desktop

```bash
sudo bash bootstrap.sh systemd-boot nvidia backup
```

## Laptop

```bash
sudo bash bootstrap.sh systemd-boot
```
