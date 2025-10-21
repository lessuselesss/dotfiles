# ~/.bash_profile

# Source .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim
