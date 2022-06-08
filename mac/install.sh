echo "install brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install node 
brew install nailgun
brew install shellcheck
npm install -g diagnostic-languageserver
mkdir -p ~/Library/Application\ Support/Sublime\ Text\/Packages/User/
cp -f ../*.sublime-settings ~/Library/Application\ Support/Sublime\ Text\/Packages/User/
cp -f ../*.sublime-snippet ~/Library/Application\ Support/Sublime\ Text\/Packages/User/
