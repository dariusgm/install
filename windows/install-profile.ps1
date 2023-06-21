Write-Host $MyInvocation.MyCommand.Name -ForegroundColor DarkGreen

$PROFILE_FILE = $Profile.CurrentUserAllHosts
Write-Output "Creating '$PROFILE_FILE'"
New-Item $PROFILE_FILE -Type Directory -Force
Copy-Item -Path profile.ps1 "$PROFILE_FILE" -Force
& $PROFILE_FILE
