Set-Location $HOME

# Define the repo and user
$repo = 'lazygit'
$user = 'jesseduffield'

# Get the latest release info from GitHub API
$release = Invoke-RestMethod -Uri "https://api.github.com/repos/$user/$repo/releases/latest"

# Loop through the assets in the latest release
foreach($asset in $release.assets) {

    # Define the download path
    $downloadPath = Join-Path -Path $HOME -ChildPath 'apps'

    # Make sure the download path exists
    if(!(Test-Path -Path $downloadPath)) {
        New-Item -ItemType Directory -Path $downloadPath | Out-Null
    }

    # Define the full path for the download
    $fullPath = Join-Path -Path $downloadPath -ChildPath $asset.name

    # Download the asset
    if  ($asset.browser_download_url.Contains("Windows_x86_64.zip")) {
        Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $fullPath
        Write-Host "Downloaded $($asset.name) to $fullPath"
        Expand-Archive -Force -Path $HOME/apps/$($asset.name) -DestinationPath $HOME\apps\lazygit
    }
    
    
}
