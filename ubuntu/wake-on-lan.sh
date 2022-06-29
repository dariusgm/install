sudo apt-get install -y netplan.io
python3 wake-on-lan/config.py
sudo cp wake-on-lan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml
sudo systemctl enable systemd-networkd.service
sudo netplan apply
