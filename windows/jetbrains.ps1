Write-Host "Fetching IntelliJ"
Start-BitsTransfer "https://data.services.jetbrains.com/products/download?code=IIU&platform=windows" -Destination $HOME/IdeaIU-professional-latest.exe
Write-Host "Fetching PyCharm"
Start-BitsTransfer "https://data.services.jetbrains.com/products/download?code=Py&platform=windows" -Destination $HOME/pycharm-professional-latest.exe
