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
cd && git clone git@github.com:dariusgm/install.git && cd install/ubuntu && ./install.sh
```

ubuntu installation
./ubuntu/install.sh

```bash
python3 build-docker.py
```
```bash
docker build  -t ubuntu-test -f ubuntu.Dockerfile .
```


