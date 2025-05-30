# Setup

Add to .bashrc

```bash
export DEV_ENV_CONFIG_DIR="$HOME/{path_to_dev_env_config}"
[ -s "$DEV_ENV_CONFIG_DIR/extend-bashrc.sh" ] && . "$DEV_ENV_CONFIG_DIR/extend-bashrc.sh"
```

# VIM

Install Vim

```bash
sudo apt install vim
```

Install NeoVim

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
```

```
sudo rm -rf /opt/nvim
```

```
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```
