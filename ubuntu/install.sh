cp update.sh ~/update.sh
chmod +x ~/update.sh

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

echo "kdenlive.sh - video editing"
./kdenlive.sh

# echo "adm driver"
# ./amd.sh

# echo "nvidia driver"
# ./nvidia.sh

echo "update everythig once again and run auto remove"
./update.sh

echo "setup git"
echo 'git config --global user.email '
echo 'git config --global user.name '
git config pull.rebase true
