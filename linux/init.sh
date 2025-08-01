SETUP_DIR="$DEV_ENV_CONFIG_DIR/linux/setup"

. $SETUP_DIR/nvm.sh
. $SETUP_DIR/vim.sh

ALIASES_DIR="$DEV_ENV_CONFIG_DIR/linux/aliases"

. $ALIASES_DIR/git.sh
. $ALIASES_DIR/vim.sh

SCRIPTS_DIR="$DEV_ENV_CONFIG_DIR/linux/scripts"
export PATH=$SCRIPTS_DIR:$PATH

AUTOCOMPLETE_DIR="$DEV_ENV_CONFIG_DIR/linux/scripts/auto_complete"

. $AUTOCOMPLETE_DIR/_work.sh
