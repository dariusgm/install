Write-Host "Installing Java 17"
New-Item $HOME/apps -Force -ItemType Directory
Start-BitsTransfer "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.5%2B8/OpenJDK17U-jdk_x64_windows_hotspot_17.0.5_8.zip" -Destination $HOME\java17.zip
Expand-Archive -Force -Verbose -Path $HOME\java17.zip -DestinationPath $HOME\java17_unpack
Remove-Item $HOME\apps\java17 -Force -Recurse
New-Item $HOME\apps\java17 -Force -ItemType Directory
Move-Item $HOME\java17_unpack\jdk-17.0.5+8\* $HOME\apps\java17  -Force
Remove-Item $HOME\java17_unpack -Force -Recurse
Remove-Item $HOME\java17.zip -Force -Recurse




Write-Host "Installing Certificates"
$keytool = "$HOME\apps\java17\bin\keytool.exe"
$truststore = "$HOME\apps\java17\lib\security"
New-Item $truststore -ItemType Directory -Force
# & $keytool -import -trustcacerts -keystore $truststore/cacerts -storepass changeit -noprompt -alias "ca" -file "ca.crt"
# & $keytool -import -trustcacerts -keystore $truststore/cacerts -storepass changeit -noprompt -alias "-ca-de" -file "ca-de.crt"
