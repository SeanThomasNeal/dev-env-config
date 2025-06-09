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

./install/nvm.sh
./install/vim.sh
./install/lazyvim-deps.sh
