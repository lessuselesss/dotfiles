# Dotfiles

Personal dotfiles managed with GNU Stow for NixOS with impermanence.

## Structure

```
dotfiles/
├── bash/          # Bash configuration
│   ├── .bashrc
│   └── .bash_profile
├── git/           # Git configuration
│   └── .gitconfig
└── nvim/          # Neovim configuration
    └── .config/
        └── nvim/
            └── init.lua
```

## Usage

This repository is automatically cloned and stowed by Home Manager.

To manually stow packages:

```bash
cd ~/dotfiles
stow bash    # Stow bash configs
stow nvim    # Stow nvim configs
stow git     # Stow git configs
```

To unstow:

```bash
stow -D bash
```

## Adding New Configs

1. Create a new directory for the application
2. Mirror your home directory structure within it
3. Place config files in the appropriate location
4. Home Manager will automatically stow on next rebuild

Example for tmux:

```bash
mkdir -p tmux
echo "set -g mouse on" > tmux/.tmux.conf
git add tmux/
git commit -m "Add tmux config"
git push
```
