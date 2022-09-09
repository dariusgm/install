# install

This is a template repository for setting up an working evironment.
I use this for my own needs, but you can fork and modify it accurding your needs.
As I switched to run everything on ubuntu (private and business), you find the real
exampes inside the ubuntu directory.


# Pre Instalation
## Ubuntu 22.04
Before you can continue, we need `git` and a small first udate of everything.
```bash
sudo apt-get update -y && sudo apt-get install -y git
```

# Instalation
## Ubuntu 22.04
```bash
cd && git clone git@github.com:dariusgm/install.git && cd install/ubuntu && ./install.sh
```
# Post Installation
```bash
git config --global user.email me@example.com
git config --global user.name "Example Me"
git config pull.rebase true
```

# CI
## Ubuntu 22.04
I implemented a python scrit that inject all different bash scripts together.
Otherwise your docker cache would be invalid at the time, making debugging in the CI build very 
time consuming.

```bash
python3 build-docker.py
```
```bash
docker build  -t ubuntu-test -f ubuntu.Dockerfile .
```


