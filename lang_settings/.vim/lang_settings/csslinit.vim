autocmd FileType vim
setlocal fileformat=unix

" Plugins
call minpac#add('hail2u/vim-css3-syntax')
call minpac#add('cakebaker/scss-syntax.vim')

setl iskeyword+=@-@

let g:lightline = {
      \ 'colorscheme': 'monokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

let g:coc_global_extensions = ['coc-git', 'coc-css', 'coc-emmet']
