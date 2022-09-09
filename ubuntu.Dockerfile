FROM ubuntu:22.04
RUN apt-get update -y
WORKDIR /root
RUN apt-get install -y sudo

# Workaround for pyenv
ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# ubuntu/basic.sh
RUN sudo apt-get update -y
RUN # net-tools for ifconfig
RUN # nethog for network traffic monitoring
RUN # iotop for IO monitoring
RUN sudo apt-get install -y curl git vim ncdu net-tools nethogs htop iotop jq
RUN cp .bashrc ~/.bashrc
RUN cp .bash_aliases ~/.bash_aliases
# RUN bash ~/install/ubuntu/snap.sh

# ubuntu/pyenv.sh
RUN #!/bin/bash
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN sudo apt-get update -y
RUN sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git
RUN rm -rf ~/.pyenv
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv
RUN export PYENV_ROOT="$HOME/.pyenv"
RUN command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
RUN # this is done by the file copy
RUN # eval "$(pyenv init -)" >> "$HOME/.bashrc"
RUN LATEST=$(pyenv install --list | grep -v - | grep -v b | grep -v miniforge | grep -v rc | grep -v '2.' | tail -n 1 )
RUN pyenv install $LATEST 
RUN pyenv global $LATEST
RUN pyenv rehash || true
RUN ~/.pyenv/versions/$LATEST/bin/python3.10 -m pip install --upgrade pip || true
# ubuntu/cdk.sh
RUN sudo apt-get install -y unzip curl
RUN curl -s https://deb.nodesource.com/setup_18.x | sudo bash
RUN sudo apt-get install -y nodejs
RUN node -v
RUN sudo npm install -g aws-cdk
RUN # aws cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install
RUN rm awscliv2.zip
RUN rm -rf aws
RUN mkdir -p ~/.aws
RUN cp credentials ~/.aws/credentials
# ubuntu/docker.sh
RUN #!/bin/bash
RUN sudo apt-get update -y
RUN sudo apt install -y ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN sudo apt-get update -y
RUN sudo apt install docker-ce docker-ce-cli containerd.io -y
RUN pip3 install wheel || true
RUN pip3 install docker-compose || true
RUN sudo usermod -aG docker $USER || true
RUN newgrp docker
# ubuntu/toolbox.sh
RUN echo "download manual"
RUN sudo apt-get install -y fuse
# ubuntu/rust.sh
RUN #!/bin/bash
RUN sudo apt-get update -y && sudo apt upgrade -y
RUN sudo apt-get install -y curl build-essential gcc make
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# ubuntu/windows_debugging.sh
RUN # debugging windows ...
RUN sudo apt-get install -y gparted ntfs-3g
# ubuntu/update.sh
RUN sudo apt-get upgrade -y
RUN sudo apt-get update -y --fix-missing
RUN sudo apt-get dist-upgrade -y
RUN sudo apt-get autoremove -y
RUN sudo snap refresh || true
RUN pip3 install --upgrade pip || true
RUN cd ~/.pyenv &&  git pull
RUN pip3 install --upgrade streamdeck-ui || true
RUN rustup update || true

ADD . /root/install
# ubuntu/streamdeck.sh
RUN sudo apt-get update -y
RUN sudo apt-get install -y libhidapi-libusb0 libxcb-xinerama0 udev
RUN sudo mkdir -p /etc/udev/rules.d
RUN sudo cp ~/install/streamdeck/70-streamdeck.rules /etc/udev/rules.d/70-streamdeck.rules
RUN sudo udevadm control --reload-rules || true
RUN pip3  install --user streamdeck_ui || true
RUN mkdir -p ~/.config/autostart
RUN cp ~/install/streamdeck/streamdeck_autostart.desktop ~/.config/autostart
# ubuntu/sublime.sh
RUN # download manual latest
RUN sudo apt-get install -y libgtk-3-0 curl
RUN curl https://download.sublimetext.com/sublime-text_build-4126_amd64.deb -o sublime-text_build-4126_amd64.deb
RUN sudo dpkg -i sublime-text_build-4126_amd64.deb
RUN rm sublime-text_build-4126_amd64.deb
RUN # sudo npm install -g diagnostic-languageserver
RUN # install snippets and settings
RUN mkdir -p ~/.config/sublime-text/Packages/User
RUN cp -f ~/install/*.sublime-settings ~/.config/sublime-text/Packages/User
RUN cp -f ~/install/*.sublime-snippet ~/.config/sublime-text/Packages/User

