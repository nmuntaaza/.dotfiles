# Alias
alias v="nvim"
alias venv="python3 -m venv"
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias tmux="tmux -2"
alias reload="source $HOME/.bash_profile"
alias py="python3"

# Source
source $HOME/.cargo/env

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Path
export PATH=$PATH:$HOME/Library/Python/3.7/bin
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
