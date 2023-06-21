Set-Location $HOME
$content = Invoke-WebRequest -UseBasicParsing -Uri "https://git-scm.com/download/win"
$content.Links | ForEach-Object {
    if ($_.href.Contains("PortableGit") -and $_.href.Contains("64-bit")) {
    Write-Host $_.href
    Invoke-WebRequest -UseBasicParsing -Uri $_.href -OutFile "./install-git.exe"; &"./install-git.exe"
    }
}
# ssh-keygen -t ed25519 -C "darius.murawski@example.com"
# git config --system core.sshCommand  "ssh -i C:\\Users\\darius.murawski\\.ssh\\id_ed25519"
