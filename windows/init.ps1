# Setup

$XDG_CONFIG_HOME="$DEV_ENV_CONFIG_DIR/config"
$PROJECTS_JSON="$DEV_ENV_CONFIG_DIR/projects.json"
if (!(Test-Path -Path "$PROJECTS_JSON" -PathType Leaf)) {
  $DefaultConfig = [PSCustomObject]@{
    config = [PSCustomObject]@{
      dir = "$DEV_ENV_CONFIG_DIR"
      title = "dev-env-config"
    }
  }
  $DefaultConfig | ConvertTo-Json | Out-File -FilePath "$PROJECTS_JSON" -Encoding ascii -Append
}

# Aliases

Set-Alias -Name "vim" -Value "nvim"
Set-Alias -Name "vi" -Value "nvim"

# Scripts

$SCRIPTS_DIR="$DEV_ENV_CONFIG_DIR/windows/scripts"

. "$SCRIPTS_DIR/set-title.ps1"
. "$SCRIPTS_DIR/work.ps1"
