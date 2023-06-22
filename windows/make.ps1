Write-Host "Installing Make"
New-Item $HOME/apps -Force -ItemType Directory
Start-BitsTransfer "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.5%2B8/OpenJDK17U-jdk_x64_windows_hotspot_17.0.5_8.zip" -Destination $HOME\java17.zip
Expand-Archive -Force -Verbose -Path $HOME\java17.zip -DestinationPath $HOME\java17_unpack
Remove-Item $HOME\apps\java17 -Force -Recurse
New-Item $HOME\apps\java17 -Force -ItemType Directory
Move-Item $HOME\java17_unpack\jdk-17.0.5+8\* $HOME\apps\java17  -Force
Remove-Item $HOME\java17_unpack -Force -Recurse
Remove-Item $HOME\java17.zip -Force -Recurse

Write-Host "Installing Powershell 7"
Set-Location $HOME
$url = "https://github.com/PowerShell/PowerShell/releases/download/v7.3.4/PowerShell-7.3.4-win-x64.zip"
Start-BitsTransfer $url -Destination $HOME\apps
Expand-Archive -Force -Path $HOME\apps\PowerShell-7.3.4-win-x64.zip -DestinationPath $HOME\apps\powershell7\
Remove-Item "$HOME\apps\PowerShell-7.3.4-win-x64.zip"

https://gnuwin32.sourceforge.net/packages/make.htm