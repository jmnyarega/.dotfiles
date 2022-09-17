nnoremap <C-h> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <c-l> :clist <CR>zz
nnoremap <leader>lk :lnext<CR>zz
nnoremap <leader>lj :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

nnoremap <F10> :bnext <CR>
nnoremap <F9> :bprev <CR>

noremap <leader>h :wincmd h <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>k :wincmd k <CR>
noremap <leader>l :wincmd l <CR>

let g:f_l = 0
let g:f_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:f_g == 1
            let g:f_g = 0
            cclose
        else
            let g:f_g = 1
            copen
        end
    else
        if g:f_l == 1
            let g:f_l = 0
            lclose
        else
            let g:f_l = 1
            lopen
        end
    endif
endfun

if executable('rg')
    let g:rg_derive_root='true'
endif
