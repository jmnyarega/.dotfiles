let s:exclude_folders="node_modules/"

fun! SEARCH()
    let word = input("Enter search word: ", "")
    let path = input("Enter path: ", "%")

    execute ':grep -r --exclude-dir='.s:exclude_folders.' ' .word .' '.path
endfun

nnoremap <leader>s :call SEARCH()<CR>

nnoremap <c-h> :cnext <CR>zz
nnoremap <c-j> :cprevious <CR>zz
nnoremap <c-l> :clist <CR>
