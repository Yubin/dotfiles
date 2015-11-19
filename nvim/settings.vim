
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:tmuxline_preset = 'minimal'

set list lcs=trail:·,tab:¦\ ,eol:¬
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

set background=dark
set clipboard+=unnamedplus

set ignorecase
set smartcase

set magic
set cursorline
set wildmenu
set hlsearch
set cmdheight=2
set laststatus=2
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set mouse=a
set autoindent
set nowrap

set splitbelow
set splitright

set ruler
set number
set relativenumber

set nostartofline

set directory=~/.config/nvim/vim-swap//

set undodir=~/.config/nvim/vim-undo//
set undofile

set backupdir=~/.config/nvim/vim-backup//
set backup
