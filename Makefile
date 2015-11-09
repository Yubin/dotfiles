
#
# TODO
#
# Handle links
# - tpm?
#
# - .gemrc
#
# nuke brew installs
# brew remove --force $(brew list)
#
# setup eclim?
#
# get env variable correctly

# Submodules
# - tpm
# - nvm wrapper

brew-install:
	brew install reattach-to-user-namespace
	brew install tmux
	brew install fish
	brew install neovim/neovim/neovim
	brew install git
	brew install tree
	brew install ack
	brew install wget
	brew install direnv
	brew install trash
	brew install coreutils

	brew install brew-cask

cask-install:
	brew cask install iterm2

gem-install:
	gem install --user-install git-up

vim-install:
	nvim -c 'PlugInstall' -c 'xa'

link:
	mkdir -p ~/.config/nvim/vim-backup
	mkdir -p ~/.config/nvim/vim-swap
	mkdir -p ~/.config/nvim/vim-undo

	ln -s ~/.dotfiles/nvim/autoload         ~/.config/nvim/autoload
	ln -s ~/.dotfiles/nvim/init.vim         ~/.config/nvim/init.vim
	ln -s ~/.dotfiles/nvim/appearance.vim   ~/.config/nvim/appearance.vim
	ln -s ~/.dotfiles/nvim/mappings.vim     ~/.config/nvim/mappings.vim
	ln -s ~/.dotfiles/nvim/plugins.vim      ~/.config/nvim/plugins.vim
	ln -s ~/.dotfiles/nvim/settings.vim     ~/.config/nvim/settings.vim
	ln -s ~/.dotfiles/nvim/tmuxline.sh      ~/.config/nvim/tmuxline.sh
	ln -s ~/.dotfiles/nvim/promptline.sh    ~/.config/nvim/promptline.sh

	mkdir -p ~/.config/fish

	ln -s ~/.dotfiles/fish/config.fish     ~/.config/fish/config.fish
	ln -s ~/.dotfiles/fish/nvm.fish        ~/.config/fish/nvm.fish

	ln -s ~/.dotfiles/editorconfig         ~/.editorconfig
	ln -s ~/.dotfiles/gitconfig            ~/.gitconfig
	ln -s ~/.dotfiles/gemrc                ~/.gemrc
	ln -s ~/.dotfiles/tmuxconf             ~/.tmux.conf

	ln -s ~/.dotfiles/alfred               ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences

	ln -s /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app /Applications/iOS\ Simulator.app

unlink:
	-unlink ~/.config/nvim/autoload
	-unlink ~/.config/nvim/init.vim
	-unlink ~/.config/nvim/appearance.vim
	-unlink ~/.config/nvim/mappings.vim
	-unlink ~/.config/nvim/plugins.vim
	-unlink ~/.config/nvim/settings.vim
	-unlink ~/.config/nvim/tmuxline.sh
	-unlink ~/.config/nvim/promptline.sh
	-unlink ~/.config/fish/config.fish
	-unlink ~/.config/fish/nvm.fish
	-unlink ~/.editorconfig
	-unlink ~/.gitconfig
	-unlink ~/.tmux.conf
	-unlink ~/.gemrc
	-unlink ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences
	-unlink /Applications/iOS\ Simulator.app

install: link brew-install cask-install gem-install vim-install

clean: unlink
