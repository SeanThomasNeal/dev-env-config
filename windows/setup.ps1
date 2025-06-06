param(
  [Parameter(Mandatory=$True, Position=0, ValueFromPipeline=$False)]
  [System.String]
  $ConfigDir
)

# Check for profile file and create if it doesn't exist
if (!(Test-Path $profile)) {
  New-Item $profile -Type File -Force
}

# Setup running of init file on start of powershell terminal
@"
`$DEV_ENV_CONFIG_DIR="$ConfigDir"
. "`$DEV_ENV_CONFIG_DIR\windows\init.ps1" | Out-Null
"@ | Out-File -FilePath $profile -Encoding ascii -Append

# Setup symbolic link to config folder
New-Item -Path "$home\AppData\Local\nvim" -ItemType SymbolicLink -Value "$ConfigDir\.vim\.config\nvim"