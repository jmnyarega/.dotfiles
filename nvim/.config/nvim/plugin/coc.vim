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

inoremap <silent><expr> <c-space> coc#refresh()
xnoremap <leader>gf  <Plug>(coc-format-selected)
nnoremap  <leader>gd  <Plug>(coc-definition)
nnoremap  <leader>gr  <Plug>(coc-references)
nnoremap  <leader>go  :CocOutline<CR>
nnoremap  <leader>ge  :CocAction<CR>
