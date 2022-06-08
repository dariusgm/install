cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
cp update.sh ~/update.sh
chmod +x ~/update.sh

# aws
mkdir -p ~/.aws
cp credentials ~/.aws/credentials

echo "basics"
./basic.sh
echo "spotify"
./spotify.sh
echo "pyenv"
./pyenv.sh
echo "cdk"
./cdk.sh
echo "docker"
./docker.sh
echo "sublime"
./sublime.sh

echo "toolbox"
./toolbox.sh
