#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y labwc swaybg xfce4-appfinder thunar foot firefox-esr network-manager blueman vlc orchis-gtk-theme faba-icon-theme flatpak gnome-software-plugin-flatpak kanshi mako-notifier swayidle swaylock greetd gtkgreet wlogout desktop-base sway fish gnome-software lxpolkit network-manager-applet
sudo useradd -M -G video greeter
sudo chmod -R go+r /etc/greetd
cd configs
sudo chmod +x labwc-run
sudo cp labwc-run /usr/local/bin/labwc-run
sudo cp greetd.toml /etc/greetd/config.toml
sudo cp greetdenv /etc/greetd/environments
sudo cp sway /etc/greetd/sway-config
sudo cp -r OB-Orchis-OD/ /usr/share/themes/OB-Orchis-OD
mkdir ~/.config/ ~/.config/labwc/ ~/.config/waybar
cp labmenu ~/.config/labwc/menu.xml
cp autostart ~/.config/labwc/autostart
cp waybar ~/.config/waybar/config
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
gsettings set org.gnome.desktop.interface gtk-theme Orchis
gsettings set org.gnome.desktop.interface icon-theme Faba
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
systemctl disable getty@tty1
systemctl reboot
