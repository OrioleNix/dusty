#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install git
git clone https://github.com/OrioleNix/dusty.git
cd dusty
config.sh
