curl -s https://deb.nodesource.com/setup_16.x | sudo bash
sudo apt install nodejs -y
node -v
sudo npm install -g aws-cdk

# aws cdk
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
