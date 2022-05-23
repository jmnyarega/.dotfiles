" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
let g:syntastic_cs_checkers = ['code_checker']

augroup omnisharp_commands
    autocmd!
    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    " autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>bb :wa!<cr>:OmniSharpBuildAsync<cr>
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

    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>gm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>gx  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>gxx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>gtt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>gc :OmniSharpDocumentation<cr>

augroup END
