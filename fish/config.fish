
# Raise file descriptor limit
ulimit -n 32768

fish_vi_mode

source ~/.config/fish/nvm.fish

# Alias
alias vim=nvim
alias ll=ls -l

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/nvim/promptline.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/nvim/promptline.sh right
end

set -U fish_user_paths (find ~/.gem/ruby -type d -maxdepth 2 | grep 'bin$') ~/.fzf/bin
