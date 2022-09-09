#!/bin/bash

sudo apt-get update -y
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --yes --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt install docker-ce docker-ce-cli containerd.io -y

sudo groupadd -f docker
sudo usermod -aG docker $USER || true
newgrp docker

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

pip3 install wheel || true
pip3 install docker-compose || true