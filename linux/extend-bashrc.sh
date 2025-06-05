SETUP_DIR="$DEV_ENV_CONFIG_DIR/linux/setup"

. $SETUP_DIR/nvm.sh
. $SETUP_DIR/vim.sh

echo "Setup loaded..."

ALIASES_DIR="$DEV_ENV_CONFIG_DIR/linux/aliases"

. $ALIASES_DIR/git.sh
. $ALIASES_DIR/vim.sh

echo "Aliases loaded..."

echo "Loaded dev-env-config"