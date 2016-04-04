
# Raise file descriptor limit
ulimit -n 8192

source ~/.dotfiles/shell/promptline.sh

alias vim="nvim"
alias vi="nvim"
alias ll="ls -l"

export PATH=~/.dotfiles/bin:$PATH

for ruby in `find ~/.gem/ruby -type d -maxdepth 2 | grep 'bin$'`
do
  export PATH=$ruby:$PATH
done
