autocmd FileType vim
set fileformat=unix

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8

" Plugins
call minpac#add('nvie/vim-flake8')

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

let g:coc_global_extensions = ['coc-jedi', 'coc-git', 'coc-python', 'coc-pyright']

nnoremap <silent> K :call CocAction('doHover')<CR>

colorscheme nord
