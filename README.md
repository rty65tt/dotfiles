# dotfiles

My Arch **dotfiles**

Managed with GNU stow. **Quick setup**:

	git clone --depth=1 https://github.com/rty65tt/dotfiles $HOME/.dotfiles

To **stow**:

	cd $HOME/.dotfiles && stow base feh rofi i3 

To **unstow**:

	cd $HOME/.dotfiles && stow -D base feh i3 rofi

## nvim
:PlugInstall

## install pkgs (installpgs.list is 'pacman -Qqe')
```
sudo pacman -S --needed $(cat ./installpkgs.list)
```

## Clean
```
pacman -Qtdq | sudo pacman -Rns -
du -hs ~/.cache
sudo pacman -Scc
journalctl --disk-usage
journalctl --vacuum-time=7d
```

## Compact VM
```
dd if=/dev/zero of=/var/tmp/bigemptyfile bs=4096k ; rm /var/tmp/bigemptyfile
sudo dd if=/dev/zero of=/boot/bigemptyfile bs=4096k ; sudo rm /boot/bigemptyfile
```

### Show top 50 largest packages
```
expac -HM '%m %n' | sort -h | tail -50

```




