$env:AWS_DEFAULT_REGION = 'eu-central-1'
$env:AWS_PROFILE = 'dev'
$env:AWS_SHARED_CREDENTIALS_FILE = "$env:USERPROFILE\.aws\credentials"
$env:AWS_CONFIG_FILE = "$env:USERPROFILE\.aws\config"
$env:HTTP_PROXY = ""
$env:HTTPS_PROXY = ""
$env:NO_PROXY = ""
$env:JAVA_HOME = "$HOME\apps\java17"
$env:APPS = "$HOME\apps\"
$env:GIT = "$HOME\apps\git;$HOME\apps\git\bin"
$env:PATH = "$env:JAVA_HOME\bin;$env:APPS;$env:GIT;;$env:CONDA;$env:PATH"

