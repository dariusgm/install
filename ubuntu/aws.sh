# depends on node
# aws cli
sudo npm install -g aws-cdk
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

mkdir -p ~/.aws
cp ~/install/ubuntu/credentials ~/.aws/credentials

rm awscliv2.zip
rm -rf aws

