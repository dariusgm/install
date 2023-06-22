Write-Host "Install neovim"
$url = "https://github.com/neovim/neovim/releases/download/stable/nvim-win64.zip"
Start-BitsTransfer $url -Destination $HOME/neovim.zip
Expand-Archive -Force -Path $HOME/neovim.zip -DestinationPath $HOME\apps\
$startDirectory = "$HOME\apps"
$directoryToRename = Get-ChildItem -Path $startDirectory -Recurse -Directory | Where-Object { $_.Name -like 'nvim*' } | Select-Object -First 1

# If a directory was found
if ($directoryToRename) {
    # Get the path to the directory
    $oldPath = $directoryToRename.FullName

    # Build the new path by replacing the directory name with 'nvim'
    $newPath = Split-Path -Path $oldPath -Parent
    $newPath = Join-Path -Path $newPath -ChildPath "nvim"

    # Rename the directory
    Rename-Item -Path $oldPath -NewName $newPath
} else {
    Write-Output "No directory containing 'neovim' found in $startDirectory or its subdirectories."
}