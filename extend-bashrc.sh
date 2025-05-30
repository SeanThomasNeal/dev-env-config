SETUP_DIR="$DEV_ENV_CONFIG_DIR/setup"

. $SETUP_DIR/nvm.sh

echo "Setup loaded..."

ALIASES_DIR="$DEV_ENV_CONFIG_DIR/aliases"

. $ALIASES_DIR/git.sh

echo "Aliases loaded..."

echo "Loaded dev-env-config"