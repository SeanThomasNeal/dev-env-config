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

### Nerd Font

- Install Fonts:
  - Open file explorer
  - Navigate to "~/.local/share/fonts/"
  - Select all fonts to install
  - Right click and click "Install"
- Setup Terminal:
  - Settings > Ubuntu > Appearance > Font Face
  - Select installed Nerd Font

# Install

### Dependencies

```bash
brew install xsel
brew install ripgrep
brew install fd
brew install fzf
brew install lazygit
brew install jq
brew install unzip
sudo apt install python3
sudo apt install -y python3-venv
```

### Nvim config

Add to .bashrc:

```bash
export DEV_ENV_CONFIG_DIR="<dev-env-config-dir>"
export DEV_ENV_CONFIG_INIT="$DEV_ENV_CONFIG_DIR/linux/init.sh"
[ -s $DEV_ENV_CONFIG_INIT ] && . $DEV_ENV_CONFIG_INIT
```


### Git Aliases

```bash
# Git Pull
git config --global alias.pr 'pull --rebase'
git config --global alias.pm 'pull --merge'

# Git Status
git config --global alias.st 'status'

# Git Add
git config --global alias.a 'add'
git config --global alias.aa 'add -A'

# Git Commit
git config --global alias.ci 'commit'
git config --global alias.cinv 'commit --no-verify'

# Git Log
git config --global alias.l 'log'
git config --global alias.lo 'log --oneline'
git config --global alias.ll 'log -1 HEAD'

# Git Reset
git config --global alias.unstage 'reset HEAD --'

# Git Checkout
git config --global alias.co 'checkout'
```
