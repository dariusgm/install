#!/bin/bash

sudo apt-get update -y && sudo apt upgrade -y
sudo apt-get install -y curl build-essential gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
