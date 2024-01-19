set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" sets 
filetype plugin indent on

set guicursor=n-v-c:block
set maxmempattern=100000
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set foldmethod=syntax   
set nofoldenable

set hidden
set undofile
set undodir=~/.vim/undo
set cursorline
set incsearch
set ignorecase
set smartcase

set showmode
set showmatch
set hlsearch
set wildmenu
set exrc
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set mousemodel=extend

if &term =~ '256color'
	set t_ut=
endif

set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor
set t_ZH=^[[3m
set t_ZR=^[[23m
colorscheme catppuccin-macchiato
highlight Folded guibg=dark guifg=gray
highlight FoldColumn guibg=dark guifg=blue
highlight Comment cterm=italic gui=italic guifg=#ff8686

" search
let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']
set grepprg=rg\ -H\ --no-heading\ --vimgrep
set grepformat=$f:$l:%c:%m
command! Rg FloatermNew --width=0.8 --height=0.8 rg
autocmd User FloatermOpen        " triggered after opening a new/existed floaterm

let g:python3_host_prog = '/usr/bin/python3' " -- Set python 3 provider


packadd minpac

" Plugins
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('junegunn/fzf')
call minpac#add('neoclide/coc.nvim')
call minpac#add('Shougo/vimproc.vim', {'do': 'silent! !make'})
call minpac#add('sickill/vim-monokai')
call minpac#add('mhinz/vim-grepper')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-commentary')
call minpac#add('jmnyarega/vim-mappings')
call minpac#add('jmnyarega/vim-netrw')
call minpac#add('jmnyarega/vim-navigation')
call minpac#add('voldikss/vim-floaterm')
call minpac#add('nvim-treesitter/nvim-treesitter')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('catppuccin/nvim')
call minpac#add('skywind3000/asynctasks.vim')
call minpac#add('skywind3000/asyncrun.vim')
call minpac#add('SirVer/ultisnips')
call minpac#add('chr4/nginx.vim')

let g:floaterm_position = 'center'
let g:floaterm_opener = "edit"
let g:floaterm_titleposition = "center"
hi Floaterm guibg=#252627
hi FloatermBorder guibg=#1f603f guifg=#ffffff

let loaded_netrwPlugin = 1

noremap    <C-D>  :FloatermNew<CR>
nnoremap   <C-D>h   :FloatermPrev<CR>
nnoremap   <C-D>l   :FloatermNext<CR>
nnoremap   <C-D>q   :FloatermKill<CR>
nnoremap   <C-D>t   :FloatermToggle!<CR>


" show chunk diff at current position
"nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
"nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
"nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

" tnoremap   <silent><Leader>tq   exit<CR>

" custom commands
command! PackageClean call minpac#clean()
command! PackageUpdate call minpac#update()


" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
