sudo apt update && sudo apt upgrade
sudo apt install libhidapi-libusb0 libxcb-xinerama0
sudo cp ../streamdeck/70-streamdeck.rules /etc/udev/rules.d/70-streamdeck.rules
sudo udevadm control --reload-rules
pip3 install --user streamdeck_ui
