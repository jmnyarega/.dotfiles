call plug#begin('~/.vim/plugged')
" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'https://tpope.io/vim/commentary.git'
Plug 'git@github.com:tpope/vim-surround.git'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'MaxMEllon/vim-jsx-pretty'
let g:vim_jsx_pretty_highlight_close_tag = 1

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'https://github.com/vimwiki/vimwiki.git'

Plug 'rust-lang/rust.vim'
Plug 'darrikonn/vim-gofmt'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
Plug 'tomlion/vim-solidity'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Plug 'vim-conf-live/vimconflive2021-colorscheme'
" Plug 'flazz/vim-colorschemes'
" Plug 'chriskempson/base16-vim'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

nnoremap <C-x> dd
nnoremap <C-e> :bdelete <CR>
nnoremap <F5> :source ~/.config/nvim/init.vim <CR>
nnoremap <leader>r :e $HOME/.config/nvim/init.vim <CR>
nnoremap Q :q<CR>
nnoremap s :w<CR>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

xnoremap f :m-2<CR>gv=gv
xnoremap z :m'>+<CR>gv=gv
no <up> :m .-2 <CR> ==
no <down> :m .+1 <CR> ==

nnoremap <right> :vertical resize -10 <CR>
nnoremap <left> :vertical resize +10 <CR>
nnoremap <silent> + :resize +1 <CR>
nnoremap <silent> - :resize -1 <CR>
nnoremap <silent> \| :vsplit % <CR>
nnoremap <silent> - :split % <CR>

noremap <c-_>  :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
inoremap <C-c> <esc>

au BufWritePost *.ts,*.js,*.jsx silent! !ctags -R --exclude=node_modules &
