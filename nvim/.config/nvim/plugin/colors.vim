let g:pretty_colorscheme = "gruvbox"

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

fun! ColorMyPencils()
    let g:pretty_contrast_dark = 'hard'
    let g:pretty_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:pretty_colorscheme])
    else
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun

nnoremap <leader>c0 :call ColorMyPencils()<CR>
nnoremap <leader>c1 :colorscheme molokai <CR>
nnoremap <leader>c2 :colorscheme solarized8 <CR>
nnoremap <leader>c3 :colorscheme onedark <CR>
nnoremap <leader>c4 :colorscheme nord <CR>
nnoremap <leader>c5 :colorscheme zenburn <CR>
nnoremap <leader>c6 :colorscheme badwolf <CR>
nnoremap <leader>c7 :colorscheme tender <CR>
nnoremap <leader>c8 :colorscheme snazzy <CR>
nnoremap <leader>c9 :colorscheme palenight <CR>
