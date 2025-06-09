Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
if (!(Test-Path ~\scoop)) {
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

$INSTALL_DIR="$DEV_ENV_CONFIG_DIR\windows\install"

& "$INSTALL_DIR\neovim.ps1"
& "$INSTALL_DIR\lazyvim-deps.ps1"
