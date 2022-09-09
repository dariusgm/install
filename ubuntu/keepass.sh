sudo apt-get install -y git libappindicator1 libgconf-2-4 libdbusmenu-gtk4 gconf2-common
cd 
git clone https://github.com/keeweb/keeweb
cd keeweb
git checkout $(git tag -l --sort -version:refname | head -n 1 ) 
export LATEST=$(git branch | head -n 1 | awk -F'v' '{print substr($2, 0, length($2) -1) }')
wget https://github.com/keeweb/keeweb/releases/download/v$LATEST/KeeWeb-$LATEST.linux.x64.deb
sudo dpkg -i KeeWeb-$LATEST.linux.x64.deb
