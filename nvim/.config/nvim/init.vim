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
colorscheme habamax
set undofile
set undodir=~/.vim/undo

set mouse=
set mousemodel=extend

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


<<<<<<< HEAD
" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=black guifg=white
let g:floaterm_position = 'topright'

noremap    <silent><Leader>t    :FloatermNew<CR>
nnoremap   <silent><Leader>tp   :FloatermPrev<CR>
nnoremap   <silent><Leader>tn   :FloatermNext<CR>
nnoremap   <silent><Leader>tq   :FloatermKill<CR>
nnoremap   <silent><Leader>tt   :FloatermToggle!<CR>

tnoremap   <silent><Leader>tq   exit<CR>
=======
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
    call minpac#add('jmnyarega/vim-netrw')
    call minpac#add('jmnyarega/vim-navigation')
    call minpac#add('fatih/vim-go', {'do': ':GoUpdateBinaries' })
    call minpac#add('dsawardekar/wordpress.vim')
    call minpac#add('mattn/emmet-vim')
endif
>>>>>>> 06b70c0 (update)

let g:user_emmet_leader_key='<C-N>'

" custom commands
command! PackageClean call minpac#clean()
command! PackageUpdate call minpac#update()

<<<<<<< HEAD

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
=======
nnoremap <C-h> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <c-l> :clist <CR>zz
nnoremap <leader>lk :lnext<CR>zz
nnoremap <leader>lj :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

nnoremap <F10> :bnext <CR>
nnoremap <F9> :bprev <CR>

noremap <leader>h :wincmd h <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>k :wincmd k <CR>
noremap <leader>l :wincmd l <CR>

let g:f_l = 0
let g:f_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:f_g == 1
            let g:f_g = 0
            cclose
        else
            let g:f_g = 1
            copen
        end
    else
        if g:f_l == 1
            let g:f_l = 0
            lclose
        else
            let g:f_l = 1
            lopen
        end
    endif
endfun

if executable('rg')
    let g:rg_derive_root='true'
endif
>>>>>>> 06b70c0 (update)
