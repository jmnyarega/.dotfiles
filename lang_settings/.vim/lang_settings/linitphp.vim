autocmd FileType vim
setlocal fileformat=unix

" Plugins
call minpac#add('dsawardekar/wordpress.vim')
call minpac#add('noahfrederick/vim-composer')
call minpac#add('noahfrederick/vim-laravel')
call minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})
call minpac#add('nelsyeung/twig.vim')
call minpac#add('sickill/vim-monokai')
cal minpac#add('tyru/open-browser.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('jwalton512/vim-blade')

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }


let g:phpactorPhpBin = "/usr/bin/php"

nnoremap <leader>l :Wcodexsearch<CR>

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

let g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']

nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <leader>co :Wcodexsearch<CR>

