set guicursor=n-v-c:block
set relativenumber
set maxmempattern=100000
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set splitbelow
set splitright
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set laststatus=3
set cursorline
set signcolumn=yes
set isfname+=@-@
set cmdheight=2
set updatetime=50
set shortmess+=c
set colorcolumn=80
set path+=**
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

colorscheme onedark

if has("termguicolors")
    set termguicolors
endif
