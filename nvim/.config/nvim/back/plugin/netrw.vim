let g:netrw_browse_split   = 0
let g:netrw_banner         = 1
let g:netrw_liststyle      = 3
let g:netrw_winsize        = 30

let g:netrw_altv           = 0
let g:netrw_fastbrowse     = 2
let g:netrw_keepdir        = 0
let g:netrw_retmap         = 1
let g:netrw_silent         = 1
let g:netrw_special_syntax = 1

let g:netrw_list_hide= netrw_gitignore#Hide()


fun! CREATEFILE()
    let filename = input("New file: ", getcwd())
    execute ':e '.filename
endfun

fun! CREATEDIR()
    let foldername = input("New directory: ", getcwd())
    execute ':!mkdir -p '.foldername
endfun

fun! DELETEFILE()
    let current_file = @%
    let filename = input("Delete file: ", current_file)
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

fun! DUPLICATEFOLDER()
    let dir = input("Dir: ", getcwd())
    let new_dir = input("NewDir: ", getcwd())
    execute "\n:!cp -r ".dir new_dir
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
nnoremap <leader>cp :call DUPLICATEFOLDER() <CR>

nnoremap <leader>n :Lex <CR>
