autocmd FileType vim
setlocal fileformat=unix

call minpac#add('mattn/emmet-vim')
call minpac#add('w0rp/ale')
call minpac#add('catppuccin/nvim')

let g:user_emmet_leader_key='<Tab>'

let g:user_emmet_settings = {
      \  'javascript.tsx' : {
      \      'extends' : 'tsx',
      \  },
      \}

let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-prettier',
      \ 'coc-emmet',
      \'coc-eslint'
      \ ]

nnoremap <silent> K :call CocAction('doHover')<CR>
