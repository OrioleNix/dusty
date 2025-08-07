#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y labwc waybar swaybg xfce4-appfinder foot firefox-esr network-manager blueman vlc orchis-gtk-theme faba-icon-theme mako-notifier swayidle greetd cage desktop-base
cd /configs
cp greetd.toml /etc/greetd/config.toml
cp greetdenv /etc/greetd/environments
cp -r OB-Orchis-OD/ /usr/share/themes/
mkdir ~/.config/labwc/
cp labmenu ~/.config/labwc/menu.xml
mkdir ~/.config/waybar
cp waybar ~/.config/waybar/config.jsonc
