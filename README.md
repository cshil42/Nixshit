# .dotfiles

```bash
nix-shell -p git --command "git clone --recurse-submodules https://github.com/aedans/.dotfiles.git"
```

## VirtualBox

```bash
bash bootstrap.sh grub
```

## Desktop

```bash
bash bootstrap.sh systemd-boot nvidia backup
```

## Laptop

```bash
bash bootstrap.sh systemd-boot
```
