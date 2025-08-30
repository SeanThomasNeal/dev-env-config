$SETUP_DIR="$DEV_ENV_CONFIG_DIR\windows\setup"

. "$SETUP_DIR\vim.ps1"
. "$SETUP_DIR\projects.ps1"

$ALIAS_DIR="$DEV_ENV_CONFIG_DIR\windows\aliases"

. "$ALIAS_DIR\git.ps1"
. "$ALIAS_DIR\vim.ps1"

$SCRIPTS_DIR="$DEV_ENV_CONFIG_DIR/windows/scripts"

. "$SCRIPTS_DIR/set-title.ps1"
. "$SCRIPTS_DIR/work.ps1"
