# Alias
alias v="nvim"
alias venv="python3 -m venv"
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias tmux="tmux -2"
alias reload="source $HOME/.bash_profile"

# Source
source $HOME/.cargo/env

# Path
export PATH=$PATH:$HOME/Library/Python/3.7/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
