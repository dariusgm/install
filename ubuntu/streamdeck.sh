sudo apt-get update -y
sudo apt-get install -y libhidapi-libusb0 libxcb-xinerama0 udev
sudo mkdir -p /etc/udev/rules.d
sudo cp ~/install/streamdeck/70-streamdeck.rules /etc/udev/rules.d/70-streamdeck.rules
sudo udevadm control --reload-rules || true
pip3  install --user streamdeck_ui || true
mkdir -p ~/.config/autostart
cp ~/install/streamdeck/streamdeck_autostart.desktop ~/.config/autostart
