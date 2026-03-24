#!/bin/bash

sudo apt update -y
sudo apt install ufw fail2ban -y

sudo ufw allow ssh
sudo ufw enable

sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sudo systemctl restart ssh
