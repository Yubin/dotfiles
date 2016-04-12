
DOTFILES=~/.dotfiles
BASH_IT=$DOTFILES/bash/bash-it

# Raise file descriptor limit
ulimit -n 8192

source $DOTFILES/shell/promptline.sh

source $BASH_IT/bash_it.sh
