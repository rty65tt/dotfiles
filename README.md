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

## install pkgs (installpgs.list is 'pacman -Qeq')
```
sudo pacman -S --needed $(cat ./installpkgs.list)
```

## Clean
```
pacman -Qtdq | sudo pacman -Rns -
du -hs ~/.cache
```

## Compact VM
```
dd if=/dev/zero of=/var/tmp/bigemptyfile bs=4096k ; rm /var/tmp/bigemptyfile
```

### Show top 50 largest packages
```
expac -HM '%m %n' | sort -h | tail -50

```




