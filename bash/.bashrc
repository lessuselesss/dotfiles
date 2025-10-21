# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Check window size after each command
shopt -s checkwinsize

# Colored prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'

# NixOS specific
alias nrs='sudo nixos-rebuild switch --flake /etc/nixos'
alias hms='home-manager switch --flake /etc/nixos'

# Enable bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
