#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install tree -y
sudo sed 's/# Port 22/Port 33543/' /etc/ssh/sshd_config
sudo nohup bash ../bootstrap/docker.sh -y

