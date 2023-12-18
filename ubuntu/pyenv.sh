#!/bin/bash
# depends on git

DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
sudo apt-get update -y
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
rm -rf ~/.pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# this is done by the file copy
# eval "$(pyenv init -)" >> "$HOME/.bashrc"

pyenv install --list | grep -v - | grep -v b | grep -v miniforge | grep -v rc | grep -v '2.' | grep -v a | tail -n 1 | awk -F'[[:space:]]' '{print $NF}' > long.txt
cat long.txt | awk -F'[[:space:]]' '{print $NF}' | awk -F'\.' '{print $1"."$2}' > short.txt
pyenv install $(cat long.txt) 
pyenv global $(cat long.txt)
pyenv rehash || true
~/.pyenv/versions/$(cat long.txt)/bin/python$(cat short.txt) -m pip install --upgrade pip || true
rm long.txt
rm short.txt
