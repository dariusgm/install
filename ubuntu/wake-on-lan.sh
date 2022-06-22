sudo apt-get install -y ethtool
sudo cp wake-on-lan/50-wired.link /etc/systemd/network/50-wired.link
sudo systemctl enable wol.service 
sudo systemctl daemon-reload
