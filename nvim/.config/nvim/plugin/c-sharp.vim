" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
let g:syntastic_cs_checkers = ['code_checker']

autocmd FileType cs noremap b<F5> :!mcs % <CR>
autocmd FileType cs noremap r<F5> :%:r.exe <CR>
autocmd FileType cs noremap d<F5> :!rm %:r.exe <CR>

augroup omnisharp_commands
    autocmd!
    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    " autocmd FileType cs nnoremap <leader>bb :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    " autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "The following commands are contextual, based on the current cursor position.
    autocmd FileType cs nnoremap <leader>gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>gi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>gt :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>gs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>gu :OmniSharpFindUsages<cr>
    autocmd FileType cs nnoremap <leader>rn :OmniSharpRename<cr>

    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>m :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>fx  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>t  :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>K :OmniSharpDocumentation<cr>
augroup END
