# Änderungen nach der installation

## Damit in Dolphin das "öffnen mit" funktioniert 
SOURCE: https://bbs.archlinux.org/viewtopic.php?pid=2167377
```
sudo pacman -S archlinux-xdg-menu
```
Um manuell zu starten
```
XDG_MENU_PREFIX=arch- kbuildsycoca6
```
Als autostart xinit Config file erstellen und mit inhalt füllen
```
touch .xinitrc
echo "export XDG_MENU_PREFIX=plasma-" > .xinitrc
```