Set-Location $HOME
Write-Host "Installing Graphviz"
New-Item $HOME/apps -Force -ItemType Directory

$webSite = Invoke-WebRequest -Uri https://www.graphviz.org/download/
$webSite.ParsedHtml.body.getElementsByTagname("a") | ForEach-Object {
    if ($_.innerHTML) {
        $html = $_.innerHTML
        if ($_.href.Contains("windows") -and $html.Contains("graphviz") -and $_.href.Contains(".zip")) {
            $url =$_.href
            Write-Host "Fetching $url"
            Start-BitsTransfer $url -Destination $HOME\graphviz-latest.zip
            Expand-Archive -Force -Verbose -Path $HOME\graphviz-latest.zip -DestinationPath $HOME\graphviz_unpack
            Remove-Item $HOME\apps\graphviz -Force -Recurse
            New-Item $HOME\apps\graphviz -Force -ItemType Directory
            Move-Item $HOME\graphviz_unpack\Graphviz\bin\* $HOME\apps\graphviz  -Force
            Remove-Item $HOME\graphviz_unpack -Force -Recurse
            Remove-Item $HOME\graphviz-latest.zip -Force -Recurse
            break

        }
    }
}