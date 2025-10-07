# Setup

Run as administrator

```ps1
.\windows\setup.ps1 <config_repo_path>
```
# Pre-Install

### Scoop

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### Nerd Font

```powershell
scoop install JetBrainsMono-NF
```

- Setup Terminal:
  - Settings > Windows PowerShell > Appearance > Font Face
  - Select installed Nerd Font

# Install

### Dependencies

```powershell
scoop bucket add extras
scoop bucket add nerd-fonts

scoop install gzip
scoop install gcc
scoop install fd
scoop install lazygit
scoop install JetBrainsMono-NF
scoop install ripgrep
scoop install neovim
```

### Nvim config

```powershell
if (!(Test-Path $profile)) { New-Item $profile -Type File -Force }; nvim $profile
```

Add to profile.ps1

```powershell
$DEV_ENV_CONFIG_DIR="<dev-env-config-dir>"
. "$DEV_ENV_CONFIG_DIR\windows\init.ps1" | Out-Null
```

Setup symbolic link to nvim config (Run as administrator)

```powershell
New-Item -Path "$home\AppData\Local\nvim" -ItemType SymbolicLink -Value "<dev-env-config-dir>\config\nvim"
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
