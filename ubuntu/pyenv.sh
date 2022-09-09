#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
sudo apt-get update -y
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
rm -rf ~/.pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# this is done by the file copy
# eval "$(pyenv init -)" >> "$HOME/.bashrc"
LATEST=$(pyenv install --list | grep -v - | grep -v b | grep -v miniforge | grep -v rc | grep -v '2.' | tail -n 1 )
pyenv install $LATEST 
pyenv global $LATEST
pyenv rehash || true
~/.pyenv/versions/$LATEST/bin/python3.10 -m pip install --upgrade pip || true
