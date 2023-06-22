$env:AWS_DEFAULT_REGION = 'eu-central-1'
$env:AWS_PROFILE = 'dev'
$env:AWS_SHARED_CREDENTIALS_FILE = "$env:USERPROFILE\.aws\credentials"
$env:AWS_CONFIG_FILE = "$env:USERPROFILE\.aws\config"
$env:HTTP_PROXY = ""
$env:HTTPS_PROXY = ""
$env:NO_PROXY = ""

$env:APPS = "$HOME\apps\"
$env:GIT = "$HOME\apps\git;$HOME\apps\git\bin"
$env:JAVA_HOME = "$HOME\apps\java17"
$env:POWERSHELL7 = "$HOME\apps\powershell7"
$env:NVIM = "$HOME\apps\nvim"
$env:NODE = "$HOME\apps\node"
$env:PATH = "$env:APPS;$env:GIT;$env:JAVA_HOME\bin;$env:POWERSHELL7;$env:NVIM;$env:NODE;$env:PATH"

