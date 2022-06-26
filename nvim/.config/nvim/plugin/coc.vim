let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-snippets',
            \'coc-prettier',
            \'coc-git',
            \]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

augroup coc_commands
    autocmd!
    autocmd CursorHold * silent call CocActionAsync('highlight')

    autocmd FileType javascript,typescript nmap <silent>gi <Plug>(coc-implementation)
    autocmd FileType javascript,typescript nmap <silent>gd <Plug>(coc-definition)
    autocmd FileType javascript,typescript nmap <silent>gy <Plug>(coc-type-definition)
    autocmd FileType javascript,typescript nmap <silent>gr <Plug>(coc-references)

    autocmd FileType javascript,typescript nmap <silent>grn <Plug>(coc-rename)
    autocmd FileType javascript,typescript nmap <silent>go :CocOutline<CR>
    autocmd FileType javascript,typescript nmap <silent>ge :CocAction<CR>
    autocmd FileType javascript,typescript xmap <leader>f  <Plug>(coc-format-selected)
    autocmd FileType javascript,typescript nmap <leader>f  <Plug>(coc-format-selected)

    autocmd FileType javascript,typescript nmap <silent>K  :call <SID>show_documentation()<CR>
    autocmd FileType javascript,typescript nmap <leader>f  <Plug>(coc-format-selected)
    autocmd FileType javascript,typescript nmap <leader>f  <Plug>(coc-format-selected)

    autocmd FileType javascript,typescript nmap <leader>cl  <Plug>(coc-codelens-action)
augroup end


if has('nvim')
  inoremap <silent><expr> Q coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
