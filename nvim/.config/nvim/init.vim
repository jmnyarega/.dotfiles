set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" if executable('rg') 
	" set grepprg=rg\ --vimgrep\ --hidden\ —glob ‘!.git’
" endif

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
set termguicolors

set hidden
set undofile
set undodir=~/.vim/undo
set cursorline
set incsearch
set ignorecase
set smartcase
set nu

set showmode
set showmatch
set hlsearch
set wildmenu
set exrc
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set mousemodel=extend

if &term == 'screen-256color'
 set background=dark
endif

set t_ZH=^[[3m
set t_ZR=^[[23m
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
call minpac#add('voldikss/vim-floaterm')
call minpac#add('nvim-treesitter/nvim-treesitter')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('skywind3000/asynctasks.vim')
call minpac#add('skywind3000/asyncrun.vim')
call minpac#add('brookhong/DBGPavim')
call minpac#add('vimwiki/vimwiki')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})
call minpac#add('mileszs/ack.vim')
call minpac#add('dsawardekar/wordpress.vim')
call minpac#add('StanAngeloff/php.vim')
call minpac#add('tyru/open-browser.vim')
call minpac#add('dkprice/vim-easygrep')

" call minpac#add('tobyS/pdv')
" call minpac#add('metakirby5/codi.vim')
" call minpac#add('pechorin/any-jump.vim')
" nnoremap <leader>j :AnyJump<CR>
" xnoremap <leader>j :AnyJumpVisual<CR>
" nnoremap <leader>ab :AnyJumpBack<CR>
" nnoremap <leader>al :AnyJumpLastResults<CR>

if executable('Ack')
  let g:ackprg = 'Ack --vimgrep'
endif

call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
call minpac#add('junegunn/fzf.vim')

let g:floaterm_position = 'center'
let g:floaterm_opener = "edit"
let g:floaterm_titleposition = "center"
" hi Floaterm guibg=#252627
" hi FloatermBorder guibg=#1f603f guifg=#ffffff

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
nnoremap ? :CocDiagnostics <CR>
noremap <Tab> :CocRestart <CR>

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

nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:python3_host_prog = '/usr/bin/python3' " -- Set python 3 provider

"autocmd FileType typescript,javascript source ~/.vim/lang_settings/linit.vim
autocmd FileType css,scss source ~/.vim/lang_settings/csslinit.vim
autocmd FileType json source ~/.vim/lang_settings/jsonlinit.vim
autocmd FileType php source ~/.vim/lang_settings/linitphp.vim
autocmd FileType python source ~/.vim/lang_settings/linitpython.vim

au FileType html let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>

colorscheme catppuccin

" let g:localvimrc_whitelist = '/home/josiah/Documents/projects/sigma_frontend/.lvimrc'
" let g:localvimrc_whitelist = '/home/josiah/Documents/projects/algorithms-c++/.vim/init.vim'
" let g:localvimrc_whitelist = '/home/josiah/Documents/projects/grokking/.vim/init.vim'
" let g:localvimrc_whitelist = '/home/josiah/Documents/projects/Rietveld/code/.vimrc'

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
