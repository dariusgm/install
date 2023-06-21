Write-Host "Installing Terraform"
New-Item $HOME\apps -Force -ItemType Directory
Start-BitsTransfer "https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_windows_amd64.zip" -Destination $HOME\terraform.zip
Expand-Archive -Force -Verbose -Path $HOME\terraform.zip -DestinationPath $HOME\apps
