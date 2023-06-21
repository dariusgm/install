Set-Location $HOME
New-Item -ItemType Directory -Path apps -Force
Write-Host "Install nodejs"
$url = "https://nodejs.org/dist/v18.16.0/node-v18.16.0-win-x64.zip"
Start-BitsTransfer $url -Destination $HOME/node.zip
Expand-Archive -Force -Path $HOME/node.zip -DestinationPath $HOME\apps\

# rename to only "node"
$startDirectory = "$HOME\apps"

# Get the directories that contain 'node' in their name
$directoryToRename = Get-ChildItem -Path $startDirectory -Recurse -Directory | Where-Object { $_.Name -like '*node*' } | Select-Object -First 1

# If a directory was found
if ($directoryToRename) {
    # Get the path to the directory
    $oldPath = $directoryToRename.FullName

    # Build the new path by replacing the directory name with 'node'
    $newPath = Split-Path -Path $oldPath -Parent
    $newPath = Join-Path -Path $newPath -ChildPath "node"

    # Rename the directory
    Rename-Item -Path $oldPath -NewName $newPath
} else {
    Write-Output "No directory containing 'node' found in $startDirectory or its subdirectories."
}
