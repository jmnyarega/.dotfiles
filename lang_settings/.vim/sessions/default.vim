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
badd +9 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/footer_menu/templates/footer-links-2.tpl.php
badd +8 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/footer_menu/templates/footer-links-3.tpl.php
badd +19 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/footer_menu/templates/footer-links-1.tpl.php
badd +17 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/footer_menu/templates/footer-contact.tpl.php
badd +200 ~/projects/Nobeach-staging-1/wp-theme/css/main.css
badd +1 ~/projects/Nobeach-staging-1/wp-theme/css/index.css
badd +1 ~/projects/Nobeach-staging-1/wp-theme/css/base.css
badd +87 ~/projects/Nobeach-staging-1/wp-theme/css/button.css
badd +170 ~/projects/Nobeach-staging-1/wp-theme/css/header.css
badd +45 ~/projects/Nobeach-staging-1/wp-theme/js/sliders/index.js
badd +82 ~/projects/Nobeach-staging-1/wp-theme/js/app.js
badd +1 ~/projects/Nobeach-staging-1/wp-theme/js/load-more.js
badd +104 ~/projects/Nobeach-staging-1/wp-theme/includes/builder/modules/Team/templates/cta-popup.tpl.php
badd +25 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/footer_menu/index.php
badd +59 ~/projects/Nobeach-staging-1/wp-theme/shortcodes/header_menu/templates/popup-menu.tpl.php
badd +1 ~/projects/Nobeach-staging-1/wp-theme/includes/builder/modules/Team/templates/contact-popup-card.tpl.php
argglobal
%argdel
argglobal
enew
file \[coc-explorer]-1
balt ~/projects/Nobeach-staging-1/wp-theme/css/main.css
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
