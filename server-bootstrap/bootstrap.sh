#!/bin/bash

sudo apt update && sudo apt upgrade
sudo install tree -y
sudo sed 's/# Port 22/Port 33543' /etc/ssh/sshd_config
sudo bash ../docker.sh -y

