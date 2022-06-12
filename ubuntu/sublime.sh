# download manual latest
curl https://download.sublimetext.com/sublime-text_build-4126_amd64.deb -o sublime-text_build-4126_amd64.deb
sudo dpkg -i sublime-text_build-4126_amd64.deb
rm sublime-text_build-4126_amd64.deb
sudo apt-get install -y nodejs
sudo npm install -g diagnostic-languageserver

# install snippets
mkdir -p ~/.config/sublime-text/Packages/User
cp -f ../*.sublime-settings ~/.config/sublime-text/Packages/User
cp -f ../*.sublime-snippet ~/.config/sublime-text/Packages/User

rm sublime-text_build-4126_amd64.deb
