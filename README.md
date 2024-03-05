# .dotfiles

```bash
nix-shell -p git --command "git clone https://github.com/aedans/.dotfiles.git"
cd .dotfiles
```

## VirtualBox

```bash
sudo bash bootstrap.sh grub
```

## PC

```bash
sudo bash bootstrap.sh systemd-boot
```

## PC with NVIDIA

```bash
sudo bash bootstrap.sh systemd-boot nvidia
```
