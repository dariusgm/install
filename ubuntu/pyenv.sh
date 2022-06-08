sudo apt update -y
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev 
sudo apt install -y libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev
sudo apt install -y libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
rm -rf ~/.pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
. .bashrc
pyenv install --list
pyenv install 3.10.5
pyenv global 3.10.5
pyenv rehash
~/.pyenv/versions/3.10.5/bin/python3.10 -m pip install --upgrade pip

