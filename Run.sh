#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y labwc swaybg xfce4-appfinder thunar foot firefox-esr network-manager blueman vlc orchis-gtk-theme faba-icon-theme mako-notifier swayidle swaylock greetd gtkgreet wlogout cage desktop-base sway fish gnome-software lxpolkit
sudo useradd -M -G video greeter
sudo chmod -R go+r /etc/greetd
cd configs
sudo cp greetd.toml /etc/greetd/config.toml
sudo cp greetdenv /etc/greetd/environments
sudo cp sway /etc/greetd/sway-config
sudo cp -r OB-Orchis-OD/ /usr/share/themes/OB-Orchis-OD
mkdir ~/.config/
mkdir ~/.config/labwc/
cp labmenu ~/.config/labwc/menu.xml
cp autostart ~/.config/labwc/autostart
systemctl reboot
