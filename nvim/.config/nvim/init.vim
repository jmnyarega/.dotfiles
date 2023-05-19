set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" sets 
filetype plugin indent on

set guicursor=n-v-c:block
set maxmempattern=100000
set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set splitbelow
set splitright
set nowrap
set noswapfile
set nobackup
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
set wildignore+=*.pyc
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

set hidden
set background=light
set rnu
colorscheme monokai
set undofile
set undodir=~/.vim/undo

if &term =~ '256color'
	set t_ut=
endif

set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor

" search
let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']
set grepprg=rg\ -H\ --no-heading\ --vimgrep
set grepformat=$f:$l:%c:%m

" Plugins
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('junegunn/fzf')
call minpac#add('neoclide/coc.nvim',  {'type': 'opt'})
call minpac#add('Shougo/vimproc.vim', {'do': 'silent! !make'})
call minpac#add('sickill/vim-monokai')
call minpac#add('mhinz/vim-grepper')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-commentary')
call minpac#add('jmnyarega/vim-mappings')
call minpac#add('jmnyarega/vim-netrw')
call minpac#add('jmnyarega/vim-navigation')

" custom commands
command! PackageClean call minpac#clean()
command! PackageUpdate call minpac#update()
