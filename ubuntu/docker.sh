#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y docker.io systemctl
sudo systemctl start docker.service || true
sudo systemctl enable docker.service || true
pip3 install wheel || true
pip3 install docker-compose || true
sudo usermod -aG docker $USER || true
newgrp docker
