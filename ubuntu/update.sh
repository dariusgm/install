sudo apt-get upgrade -y
sudo apt-get update -y --fix-missing
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
sudo snap refresh || true

pip install --upgrade pip
cd ~/.pyenv &&  git pull
pip3 install --upgrade streamdeck-ui
