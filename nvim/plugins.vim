
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'

Plug 'scrooloose/syntastic'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'osyo-manga/vim-over'
Plug 'triglav/vim-visual-increment'
Plug 'myusuf3/numbers.vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'winresizer.vim'
Plug 'EasyMotion'
Plug 'Tabmerge'

" Style
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

""
" Syntax
""

" JavaScript
Plug 'pangloss/vim-javascript'
" Mustache
Plug 'mustache/vim-mustache-handlebars'
" Less CSS
Plug 'groenewege/vim-less'
" Elixir
Plug 'elixir-lang/vim-elixir'

call plug#end()
