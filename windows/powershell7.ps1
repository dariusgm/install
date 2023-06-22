Write-Host "Installing Powershell 7"
Set-Location $HOME
$url = "https://github.com/PowerShell/PowerShell/releases/download/v7.3.4/PowerShell-7.3.4-win-x64.zip"
Start-BitsTransfer $url -Destination $HOME\apps
Expand-Archive -Force -Path $HOME\apps\PowerShell-7.3.4-win-x64.zip -DestinationPath $HOME\apps\powershell7\
Remove-Item "$HOME\apps\PowerShell-7.3.4-win-x64.zip"
