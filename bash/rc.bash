
DOTFILES=~/.dotfiles
BASH_IT=$DOTFILES/bash/bash-it

# Raise file descriptor limit
ulimit -n 8192

set -o vi

source $DOTFILES/shell/promptline.sh
source $BASH_IT/bash_it.sh
source $HOME/.nvm/nvm.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

echo "Welcome to BASH"

# This needs to be the last line
eval "$(direnv hook bash)"
