# Pre-Install

### Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

If you are on wsl, add this to your .bashrc:

```bash
export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"
export PATH="$PATH:$BREW_HOME"
```

# Install

From dev_env_config root

```bash
./linux/installation.sh <config_dir>
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

