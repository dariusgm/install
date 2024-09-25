cp update.sh ~/update.sh
chmod +x ~/update.sh
mkdir -p ~/install/logs

echo "basics"
./basic.sh > ~/install/logs/basic.log

echo "snaps"
./snap.sh > ~/install/logs/snap.log

echo "node"
./node.sh > ~/install/logs/node.log

echo "pyenv"
./pyenv.sh > ~/install/logs/pyenv.log

echo "aws"
./aws.sh > ~/install/logs/aws.log

echo "docker"
./docker.sh > ~/install/logs/docker.log

echo "sublime"
./sublime.sh > ~/install/logs/sublime.log

echo "toolbox"
./toolbox.sh > ~/install/logs/toolbox.log

echo "rust"
./rust.sh > ~/install/logs/rust.log

echo "streamdeck-ui"
./streamdeck.sh > ~/install/logs/streamdeck.log

echo "windows_debugging"
./windows_debugging.sh > ~/install/logs/windows_debugging.log

echo "kdenlive - video editing"
./kdenlive.sh > ~/install/logs/kdenlive.log

echo "keepass - secrets manager"
./keepass.sh > ~/install/logs/keepass.log

# echo "adm driver"
# ./amd.sh

# echo "nvidia driver"
# ./nvidia.sh

echo "update everythig once again and run auto remove"
./update.sh > ~/install/logs/update.log

echo "setup git"
echo 'git config --global user.email '
echo 'git config --global user.name '
git config pull.rebase true
