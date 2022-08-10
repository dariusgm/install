sudo apt update -y && sudo apt upgrade -y
sudo apt install -y libhidapi-libusb0 libxcb-xinerama0
sudo cp ../streamdeck/70-streamdeck.rules /etc/udev/rules.d/70-streamdeck.rules
sudo udevadm control --reload-rules
pip3  install --user streamdeck_ui
cp ../streamdeck/streamdeck_autostart.desktop ~/.config/autostart