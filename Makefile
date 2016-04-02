
brew-install:
	brew install reattach-to-user-namespace
	brew install tmux
	brew install fish
	brew install zsh
	brew install neovim/neovim/neovim
	brew install git
	brew install tree
	brew install ack
	brew install wget
	brew install direnv
	brew install trash
	brew install jq
	brew install coreutils

	brew install brew-cask

cask-install:
	brew cask install iterm2

gem-install:
	gem install --user-install git-up

vim-install:
	nvim -c 'PlugInstall' -c 'xa'

git-install:
	git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

link:
	mkdir -p ~/.config/nvim/autoload
	mkdir -p ~/.config/nvim/vim-backup
	mkdir -p ~/.config/nvim/vim-swap
	mkdir -p ~/.config/nvim/vim-undo

	ln -s ~/.dotfiles/nvim/autoload/plug.vim    ~/.config/nvim/autoload/plug.vim
	ln -s ~/.dotfiles/nvim/init.vim             ~/.config/nvim/init.vim
	ln -s ~/.dotfiles/nvim/appearance.vim       ~/.config/nvim/appearance.vim
	ln -s ~/.dotfiles/nvim/mappings.vim         ~/.config/nvim/mappings.vim
	ln -s ~/.dotfiles/nvim/plugins.vim          ~/.config/nvim/plugins.vim
	ln -s ~/.dotfiles/nvim/settings.vim         ~/.config/nvim/settings.vim

	mkdir -p ~/.config/fish

	ln -s ~/.dotfiles/fish/config.fish     ~/.config/fish/config.fish
	ln -s ~/.dotfiles/fish/nvm.fish        ~/.config/fish/nvm.fish

	ln -s ~/.dotfiles/zsh/rc.zsh           ~/.zshrc

	ln -s ~/.dotfiles/editorconfig         ~/.editorconfig
	ln -s ~/.dotfiles/gitconfig            ~/.gitconfig
	ln -s ~/.dotfiles/gemrc                ~/.gemrc
	ln -s ~/.dotfiles/tmuxconf             ~/.tmux.conf

	ln -s ~/.dotfiles/alfred               ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences

	ln -s /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app /Applications/iOS\ Simulator.app

install: link brew-install cask-install gem-install vim-install git-install

unlink:
	-unlink ~/.config/nvim/autoload
	-unlink ~/.config/nvim/init.vim
	-unlink ~/.config/nvim/autoload/plug.vim
	-unlink ~/.config/nvim/appearance.vim
	-unlink ~/.config/nvim/mappings.vim
	-unlink ~/.config/nvim/plugins.vim
	-unlink ~/.config/nvim/settings.vim
	-unlink ~/.config/fish/config.fish
	-unlink ~/.config/fish/nvm.fish
	-unlink ~/.zshrc
	-unlink ~/.editorconfig
	-unlink ~/.gitconfig
	-unlink ~/.tmux.conf
	-unlink ~/.gemrc
	-unlink ~/Library/Application\ Support/Alfred\ 2/Alfred.alfredpreferences
	-unlink /Applications/iOS\ Simulator.app

clean: unlink
	-unlink ~/.fzf
