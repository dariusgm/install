Write-Host "Installing Maven"
$webSite = Invoke-WebRequest -Uri https://maven.apache.org/download.cgi
$skip = $false
$version = ""
$webSite.ParsedHtml.body.getElementsByTagname("a") | ForEach-Object {
    if ($_.innerHTML)
    {
        $html = $_.innerHTML
        if ( $html.Contains("bin") -and  $html.Contains("zip") -and  $html.Contains("-3"))
        {
            $url = $_.href
            if ($skip -eq $false) {
                Write-Host "Fetching $url"
                Start-BitsTransfer $url -Destination $HOME/$version
                $version = $url.Split("/")[-1]
                $skip = $true
            }

        }
    }
}
$nestedDirectory = $version.Replace(".zip", "")
Expand-Archive -Force -Verbose -Path $HOME/$version -DestinationPath $HOME/$nestedDirectory
New-Item $HOME/apps -Force -ItemType Directory
Move-Item $HOME/$nestedDirectory/* $HOME/apps/maven3
Remove-Item $HOME/$version -Force
Remove-Item $HOME/$nestedDirectory -Force -Recurse

