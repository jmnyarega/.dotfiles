" hello front end masters
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

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

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

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

Plug 'vim-conf-live/vimconflive2021-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

" Adding local modules
let &runtimepath.=',' . expand("$HOME") . '/personal/harpoon/tmux'
let &runtimepath.=',' . expand("$HOME") . '/personal/vim-with-me/ui'
let &runtimepath.=',' . expand("$HOME") . '/personal/refactoring.nvim/master'
let &runtimepath.=',' . expand("$HOME") . '/personal/git-worktree.nvim/master'

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>gt <Plug>PlenaryTestFile
nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>
" nnoremap <leader>nf :!./scripts/format.py %

nnoremap <leader>x :silent !chmod +x %<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

nnoremap <C-x> dd
nnoremap <C-e> :bdelete <CR>
nnoremap <F5> :source ~/.config/nvim/init.vim <CR>
nnoremap <Leader>r :e $HOME/.config/nvim/init.vim <CR>
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
nnoremap <silent> " :vsplit % <CR>
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
vnoremap <leader>d "_d

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

inoremap <C-c> <esc>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

" ES
com! W w

nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre lua,cpp,c,h,hpp,cxx,cc Neoformat
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

" Coc / Tabnine configs
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-lists',
            \'coc-snippets',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-tabnine',
            \'coc-syntax',
            \'coc-git',
            \'coc-highlight',
            \]

xmap <leader>gf  <Plug>(coc-format-selected)
map  <leader>gd  <Plug>(coc-definition)
map  <leader>gr  <Plug>(coc-references)
map  <leader>go  :CocOutline<CR>

au BufWritePost *.ts,*.js,*.jsx silent! !ctags -R --exclude=node_modules &
