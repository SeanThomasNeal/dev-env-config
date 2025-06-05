param(
  [Parameter(Mandatory=$True, Position=0, ValueFromPipeline=$False)]
  [System.String]
  $ConfigDir
)

if (!(Test-Path $profile)) {
  New-Item $profile -Type File -Force
}

@"
`$DEV_ENV_CONFIG_DIR="$ConfigDir"
. "`$DEV_ENV_CONFIG_DIR\windows\init.ps1" | Out-Null
"@ | Out-File -FilePath $profile -Encoding ascii -Append