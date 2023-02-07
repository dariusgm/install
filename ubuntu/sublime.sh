# download manual latest
sudo apt-get install -y libgtk-3-0 curl
curl https://download.sublimetext.com/sublime-text_build-3211_amd64.deb -o sublime-text_build-3211_amd64.deb
sudo dpkg -i sublime-text_build-3211_amd64.deb
rm sublime-text_build-3211_amd64.deb
# sudo npm install -g diagnostic-languageserver

# install snippets and settings

# for sublime 4
# mkdir -p ~/.config/sublime-text/Packages/User
# cp -f ~/install/*.sublime-settings ~/.config/sublime-text/Packages/User
# cp -f ~/install/*.sublime-snippet ~/.config/sublime-text/Packages/User

# for sublime 3
mkdir -p ~/.config/sublime-text-3/Packages/User
cp -f ~/install/*.sublime-settings ~/.config/sublime-text-3/Packages/User
cp -f ~/install/*.sublime-snippet ~/.config/sublime-text-3/Packages/User
