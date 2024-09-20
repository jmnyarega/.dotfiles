let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/Nobeach-staging-1/wp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +12 ~/projects/Nobeach-staging-1/wp/wp-settings.php
badd +1 ~/projects/Nobeach-staging-1/wp/wp-mail.php
badd +9 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/shortcodes/header_menu/templates/popup-menu.tpl.php
badd +14 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/shortcodes/footer_menu/templates/footer-links-1.tpl.php
badd +1 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/base.css
badd +1 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/button.css
badd +49 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/header.css
badd +1 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/index.css
badd +202 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/main.css
badd +19 ~/projects/Nobeach-staging-1/wp/wp-content/themes/Divi_child/css/typography.css
argglobal
%argdel
argglobal
enew
file \[coc-explorer]-1
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
