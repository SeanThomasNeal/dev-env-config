# Setup

Add to .bashrc

```bash
export DEV_ENV_CONFIG_DIR="$HOME/{path_to_dev_env_config}"
[ -s "$DEV_ENV_CONFIG_DIR/linux/extend-bashrc.sh" ] && . "$DEV_ENV_CONFIG_DIR/linux/extend-bashrc.sh"
```

# LazyVim

### Install

From dev_env_config root

```bash
./linux/installation.sh
```

### Nerd Font

- Install Fonts:
  - Open file explorer
  - Navigate to "~/.local/share/fonts/"
  - Select all fonts to install
  - Right click and click "Install"
- Setup Terminal:
  - Settings > Ubuntu > Appearance > Font Face
  - Select installed Nerd Font

### Other dependencies:

```bash
sudo apt install fd-find
sudo apt install ripgrep
```
