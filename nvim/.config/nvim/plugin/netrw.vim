let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

fun! CREATEFILE()
    let filename = input("New file: ", getcwd())
    execute ':e '.filename
endfun

fun! CREATEDIR()
    let foldername = input("New directory: ", getcwd())
    execute ':!mkdir -p '.foldername
endfun

fun! DELETEFILE()
    let filename = input("Delete file: ", getcwd())
    execute ':!rm '.filename
endfun

fun! DELETEFOLDER()
    let foldername = input("Delete directory: ", getcwd())
    execute ':!rm -rf '.foldername
endfun


fun! MOVEFOLDER()
    let from = input("From: ", getcwd())
    let to = input("To: ", getcwd())

    execute "\n:!mv ".from to
endfun

fun! MOVEFILE()
    let current_file = @%

    echo "From: ".current_file
    let filename = input("Move to: ", current_file)

    execute "\n:!mv ".current_file filename
    execute ":edit " . filename

    execute ":bd " . current_file
endfun

nnoremap <leader>nf :call CREATEFILE() <CR>
nnoremap <leader>nd :call CREATEDIR() <CR>

nnoremap <leader>df :call DELETEFILE() <CR>
nnoremap <leader>dd :call DELETEFOLDER() <CR>

nnoremap <leader>mf :call MOVEFILE() <CR>
nnoremap <leader>md :call MOVEFOLDER() <CR>

nnoremap <leader>n <bar> :Lex <bar> :vertical resize  30<CR>
