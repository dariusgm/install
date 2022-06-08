sudo apt update -y
sudo apt install -y docker.io
sudo systemctl start docker.service
sudo systemctl enable docker.service
pip3 install wheel
pip3 install docker-compose
sudo usermod -aG docker $USER
newgrp docker
