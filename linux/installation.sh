if [ ! $1 ]; then
  echo "Provide config directory"
  exit 1
fi

if [ ! -d $1 ]; then
  echo "Provide valid config directory"
  exit 1
fi

(
  echo ""
  echo "export DEV_ENV_CONFIG_DIR=\"$1\""
  echo "export DEV_ENV_CONFIG_INIT=\"\$DEV_ENV_CONFIG_DIR/linux/init.sh\""
  echo "[ -s \$DEV_ENV_CONFIG_INIT ] && . \$DEV_ENV_CONFIG_INIT"
) >>"$HOME/.bashrc"

cd "$DEV_ENV_CONFIG_DIR/linux/install"

./nvm.sh
./vim.sh
./lazyvim-deps.sh
