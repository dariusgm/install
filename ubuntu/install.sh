cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
cp update.sh ~/update.sh
chmod +x ~/update.sh

# aws
mkdir -p ~/.aws
cp credentials ~/.aws/credentials

echo "basics"
./basic.sh

echo "snaps"
./snap.sh

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

echo "rust"
./rust.sh

echo "streamdeck-ui"
./streamdeck.sh

echo "windows_debugging.sh"
./windows_debugging.sh

# echo "adm driver"
# ./amd.sh

# echo "nvidia driver"
# ./nvidia.sh


echo "add streamdeck to autostart"