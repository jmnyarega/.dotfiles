call plug#begin('~/.vim/plugged')

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Plebvim lsp Plugins
" Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'https://tpope.io/vim/commentary.git'
Plug 'https://tpope.io/vim/surround.git'

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
Plug 'https://github.com/jlcrochet/vim-razor'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'

Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
Plug 'dracula/dracula-theme'
Plug 'sjl/badwolf'
Plug 'jacoborus/tender'
Plug 'joshdick/onedark.vim'
Plug 'jnurmine/Zenburn'
Plug 'connorholyday/vim-snazzy'
Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'

" sass
Plug 'AtsushiM/search-parent.vim'
Plug 'AtsushiM/sass-compile.vim'

" c#
Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'
Plug 'scrooloose/syntastic'

Plug 'https://github.com/jceb/vim-orgmode.git'

Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine'

Plug 'wakatime/vim-wakatime'
" circleci
Plug 'yasuhiroki/circleci.vim'

" ctags
Plug 'https://github.com/xolox/vim-easytags.git'
Plug 'https://github.com/xolox/vim-misc.git'
let g:easytags_dynamic_files = 1
let g:easytags_cmd = 'ctags'
let g:easytags_file = '~/.vim/tags'
let g:easytags_events = ['BufWritePost']
let g:easytags_async = 1
let g:easytags_syntax_keyword = 'always'
let g:easytags_by_filetype = 1
let g:easytags_include_members = 1
let g:easytags_resolve_links = 1

" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" php
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jwalton512/vim-blade'
" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tern'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2-vim'
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'

Plug 'StanAngeloff/php.vim'
Plug 'dense-analysis/ale'
Plug 'shawncplus/phpcomplete.vim'

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

let g:indentLine_leadingSpaceEnabled='1'
let g:ale_php_phpcs_executable='phpcs'
let g:ale_php_php_cs_fixer_executable='phpcbf'
let g:ale_fixers = {'php': ['phpcbf'], 'javascript': ['eslint', 'tslint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'php': ['phpcbf'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1


""{{{
  let g:sass_compile_auto = 1
  let g:sass_compile_cdloop = 5
  let g:sass_compile_cssdir = ['css', 'stylesheet', './']
  let g:sass_compile_file = ['scss', 'sass']
  let g:sass_compile_beforecmd = ''
  let g:sass_compile_aftercmd = ''

  " autocmd FileType less,sass  setlocal sw=2 sts=2 ts=2 et
  " au! BufWritePost *.scss SassCompile
"}}}

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

nnoremap <C-e> :bdelete <CR>
nnoremap <F5> :source ~/.config/nvim/init.vim <CR>
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

autocmd FileType cs noremap b<F5> :!mcs % <CR>
autocmd FileType cs noremap r<F5> :%:r.exe <CR>
autocmd FileType cs noremap d<F5> :!rm %:r.exe <CR>

noremap <c-_>  :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

" greatest remap ever
xnoremap <leader>p "_dP

" pause typing on current buffer/window for 5 mins
nnoremap <C-space> :300sleep <CR>

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
inoremap <C-c> <esc>

nnoremap <leader>i :set mouse=a<CR>
nnoremap <leader>I :set mouse=<CR>

nnoremap gt : <space>

hi CursorLine term=underline cterm=underline guibg=230 ctermbg=230 ctermfg=red
nnoremap <Leader>1 :set cursorline!<CR>

" Put this function at the very end of your vimrc file.

function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

syn match phpParentOnly "[()]" contained containedin=phpParent
hi phpParentOnly guifg=#f08080 guibg=NONE gui=NONE
au BufRead,BufNewFile *.blade.php set filetype=blade
au BufRead,BufNewFile *.scss set filetype=css
