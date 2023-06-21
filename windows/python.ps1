Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
$versions = @("3.11.1", "3.10.9", "3.9.13", "3.8.10")
$versions | ForEach-Object {
    Write-Host "Install Python $_"
    & $HOME\.pyenv\pyenv-win\bin\pyenv install $_
}

$versions | ForEach-Object {
    Write-Host "Updating Pip"
    & $HOME\.pyenv\pyenv-win\versions\$_\python.exe -m pip install --upgrade pip

    Write-Host "Install general libs"
    & $HOME\.pyenv\pyenv-win\versions\$_\python.exe -m pip install packaging
}

Remove-Item "./install-pyenv-win.ps1"