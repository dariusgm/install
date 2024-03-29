sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt update -y
sudo apt install -y obs-studio

# add pipewire for screen / application capture
sudo add-apt-repository -y ppa:pipewire-debian/pipewire-upstream
sudo apt update -y
sudo gnome-shell-extensions gnome-shell-extension-desktop-icons-ng apt install -y pipewire pipewire-audio-client-libraries
sudo apt install -y gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}}
sudo apt install -y xdg-desktop-portal xdg-desktop-portal-gnome
systemctl --user daemon-reload
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user --now enable pipewire pipewire-pulse
# add kmcaster for key presses
# sudo apt-get install -y openjdk-18-jdk
# mkdir -p ~/apps
# curl -L https://github.com/DaveJarvis/kmcaster/releases/latest/download/kmcaster.jar -o kmcaster.jar
# to execute:
# java -jar ~/apps/kmcaster.jar

# add gnome extension to draw on screen, do it manually as its broken via gext
sudo apt-get install -y gnome-shell-extension-manager
pip3 install --upgrade gnome-extensions-cli
gext install draw-on-your-screen2@zhrexl.github.com
gext enable draw-on-your-screen2@zhrexl.github.com

