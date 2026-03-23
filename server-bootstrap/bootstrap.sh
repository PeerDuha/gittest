#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install tree -y
sudo sed 's/# Port 22/Port 33543/' -i /etc/ssh/sshd_config
sudo nohup bash ../server-bootstrap/docker.sh -y

