sudo apt-get install -y unzip curl
curl -s https://deb.nodesource.com/setup_18.x | sudo bash
sudo apt-get install -y nodejs
node -v
sudo npm install -g aws-cdk

# aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip
rm -rf aws

mkdir -p ~/.aws
cp credentials ~/.aws/credentials
