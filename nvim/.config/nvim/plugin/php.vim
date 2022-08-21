autocmd BufEnter * call ncm2#enable_for_buffer()
au BufRead,BufNewFile *.blade.php set filetype=blade
hi phpParentOnly guifg=#f08080 guibg=NONE gui=NONE
syn match phpParentOnly "[()]" contained containedin=phpParent

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

function! PhpSyntaxOverride()
  " Put snippet overrides in this function.
  hi! link phpDocTags phpDefine
  hi! link phpDocParam phpType
endfunction

set completeopt=noinsert,menuone,noselect

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

let g:blade_custom_directives = ['datetime', 'javascript']
let g:indentLine_leadingSpaceEnabled='1'
let g:ale_php_phpcs_executable='phpcs'
let g:ale_php_php_cs_fixer_executable='php_cs_fixer'
let g:ale_fixers = {'php': ['php-cs-fixer'], 'javascript': ['eslint', 'tslint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'php': ['php_cs_fixer'],
\}


" If php-cs-fixer is in $PATH, you don't need to define line below
let g:php_cs_fixer_path = "~/.config/composer/vendor/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
let g:php_cs_fixer_allow_risky = "yes"      " options: --allow-risky
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 0     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 1                    " Return the output of command if 1, else an inline information.

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
nnoremap <silent><leader>fu :call PhpCsFixerFixFile()<CR>
