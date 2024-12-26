# dotfiles

## Inhaltsverzeichnis

- [dotfiles](#dotfiles)
  * [Anleitung](#Anleitung)
    + [Schritt 1:](#Schritt-1)
    + [Schritt 2:](#Schritt-2)
    + [Schritt 3:](#Schritt-3)
    + [Schritt X:](#Schritt-X)
  * [Zu Installieren](#Zu-Installieren)
    + [fastfetch](#fastfetch)
    + [base-devel](#base-devel)
    + [git](#git)
    + [yay](#yay)
    + [google-chrome](#google-chrome)
    + [pavucontroll](#pavucontrol)
    + [stow](#stow)
    + [waybar](#waybar)
    + [getnf](#getnf)
    + [swww](#swww)
    + [waypaper](#waypaper)
    + [networkmanager](#networkmanager)
    + [starship](#starship)
    + [sugar-candy SDDM Theme](#sugar-candy-SDDM-Theme)
    + [lazygit](#lazygit)
    + [neovim](#neovim)
  * [Aenderungen an nicht Dotfiles](#Aenderungen-an-nicht-Dotfiles)

## Anleitung

### Bevor installation

```
loadkeys de-latin1
```

Falls WLAN
```
iwctl
station wlan0 connect MeineFamilie
```

```
timedatectl
```

Neuste archinstall hollen für die Installation
```
pacman -Sy
pacman -S git
git clone https://github.com/archlinux/archinstall.git
cd archinstall
python -m archinstall
```


### Schritt 1:
```
sudo pacman -R vim
```
```
sudo pacman -Syu
```
```
sudo pacman -S --needed base-devel git stow
```
Ausloggen mit: 'super' + 'm'

Ins Terminal gehen mit: 'Crtl' + 'Alt' + 'Fx' [x=2...6] 

Login mit Benutzername und Passwort
```
cd dotfiles
```
```
stow .
```
```
reboot
```
```
sudo mkdir ~/Downloads
```
```
git clone https://github.com/pas-systems/dotfiles.git
```
```
cd Downloads
```
```
git clone https://aur.archlinux.org/yay.git
```
```
cd yay
```
```
makepkg -si
```

### Schritt 2:

```
sudo pacman -S --needed fastfetch pavucontrol waybar networkmanager starship lazygit nvim
```
```
sudo pacman -S --needed sddm qt5-graphicaleffects qt5-quickcontrols2 qt5-svg
```

### Schritt 3:

```
yay -S --needed google-chrome waypaper sddm-sugar-candy-git getnf
```
```
getnf
```
```
sudo mkdir /etc/sddm.conf.d
```
```
sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf.d/sddm.conf
```

### Schritt X:

```
cd /etc/sddm.conf.d/
```
```
nvim sddm.conf
```

In der Config sddm.conf folgendes ändern

```
Numlock=on
Theme=sugar-candy
```
```
cd /boot/loader/
```
nvim loader.conf
```
timeout 0
```

## Zu Installieren

### fastfetch

```
sudo pacman -S fastfetch
```

Fastfetch is a neofetch-like tool for fetching system information and displaying it prettily

https://github.com/fastfetch-cli/fastfetch

### base-devel

```
sudo pacman -S --needed base-devel
```

### git

```
sudo pacman -S --needed git
```

### yay

Vor der installation Downloads Ordner erstellen in ~/

```
sudo mkdir Downloads
cd Downloads
```

yay als git clonen ins Downloads Verzeichnis

```
git clone https://aur.archlinux.org/yay.git
```

ins yay Verzeichnis wechseln und installieren

```
cd yay
makepkg -si
```

### google-chrome

```
yay -S google-chrome
```

### pavucontrol

```
sudo pacman -S pavucontrol
```

PulseAudio Volume Control (pavucontrol) is a simple GTK based volume control tool ("mixer")

https://freedesktop.org/software/pulseaudio/pavucontrol/

### stow 

```
sudo pacman -S stow
```

GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem

https://www.gnu.org/software/stow/

### waybar

```
sudo pacman -S waybar
```

Highly customizable Wayland bar for Sway and Wlroots based compositors

https://github.com/Alexays/Waybarhttps://github.com/Alexays/Waybar

### getnf

```
sudo pacman -S getnf
```

Easily install Nerd Fonts from the terminal / after install -> fc-cache

https://github.com/getnf/getnf

### swww

```
sudo pacman -S getnf
```

Wallpaper deamon

https://github.com/LGFae/swww

### waypaper

```
yay -S waypaper
```

Wallpaper Gui

https://github.com/anufrievroman/waypaper

### networkmanager

```
sudo pacman -S networkmanager
```

NetworkManager configuration for systems to automatically connect to networks.

https://wiki.archlinux.org/title/NetworkManager

### starship

```
sudo pacman -S starship
```

The minimal, blazing-fast, and infinitely customizable prompt for any shell!

https://starship.rs/guide/

### sugar-candy SDDM Theme

Vor der Installation auszufüren um alle abhängigkeiten aufzulösen:

```
sudo pacman -S --needed sddm qt5-graphicaleffects qt5-quickcontrols2 qt5-svg
```

```
yay -S sddm-sugar-candy-git
```

### lazygit

```
sudo pacman -S lazygit
```

Git Terminal UI

https://github.com/jesseduffield/lazygit

### neovim

```
sudo pacman -R vim
sudo pacman -S nvim
```

Terminal Code Editor

https://neovim.io/

## Aenderungen an nicht Dotfiles

/boot/loader/loader.conf 

```
timeout 0
```

**Überspring die Betriebssystemsauswahl**

Ordner für Config von Loginscreen

```
sudo mkdir /etc/sddm.conf.d
```

Config Datei Copiert

```
sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf.d/sddm.conf
```

sddm.conf anpassungen:

```
Numlock=on
```
