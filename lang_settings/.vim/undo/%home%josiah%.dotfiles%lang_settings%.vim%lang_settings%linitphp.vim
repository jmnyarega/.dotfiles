Vim�UnDo� q{��C)�#�i�!�����_*�_�E>�����4o   ,                                  f���   A _�                           ����                                                                                                                                                                                                                                                                                                                                                             f���     �                setlocal fileformat=unix5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���    �         !       5��                                                �                                                5�_�                   !       ����                                                                                                                                                                                                                                                                                                                                                             f��Z   0 �       !          colorscheme monokai5��                           �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f��m     �                 autocmd FileType vim5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��n     �         !       �         !    5��                                         .       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��o   4 �                 autocmd FileType vim5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���   ; �                 5��                          /                      5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             f���     �         "       �         "    �         !      "call minpac#add('mattn/emmet-vim')5��       "                  �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �         #      Plug 'jwalton512/vim-blade'5��                         �                    �                     
   �             
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f���     �         #      &call minpac#add 'jwalton512/vim-blade'5��                        �                    5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             f���   = �         #      &call minpac#add('jwalton512/vim-blade'5��       &                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f���   A �         %       �         %    �         #      'call minpac#add('jwalton512/vim-blade')5��       '                  �                     �                          �                     �                      	   �              a      5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             f���     �              5��                          �      (               5�_�                  !       ����                                                                                                                                                                                                                                                                                                                                                             f���    �       "           �      "           �      !          %nnoremap <leader>co :Wcodexsearch<CR>5��                           �                     �                          �                     �       %                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�dM     �               5��                                                  5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             f�dN    �               5��                                                  5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             f�d[    �                 	" Plugins   ,call minpac#add('dsawardekar/wordpress.vim')   -call minpac#add('noahfrederick/vim-composer')   ,call minpac#add('noahfrederick/vim-laravel')   fcall minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})   %call minpac#add('nelsyeung/twig.vim')   &call minpac#add('sickill/vim-monokai')   'cal minpac#add('tyru/open-browser.vim')   "call minpac#add('mattn/emmet-vim')       %let g:phpactorPhpBin = "/usr/bin/php"       $nnoremap <leader>l :Wcodexsearch<CR>       let g:lightline = {   !      \ 'colorscheme': 'monokai',         \ 'active': {   (      \   'left': [ [ 'mode', 'paste' ],   I      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]   
      \ },         \ 'component_function': {   #      \   'cocstatus': 'coc#status'   
      \ },   	      \ }       Nlet g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']       2nnoremap <silent> K :call CocAction('doHover')<CR>   %nnoremap <leader>co :Wcodexsearch<CR>5�5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             f�d�    �                 	" Plugins   ,call minpac#add('dsawardekar/wordpress.vim')   -call minpac#add('noahfrederick/vim-composer')   ,call minpac#add('noahfrederick/vim-laravel')   fcall minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})   %call minpac#add('nelsyeung/twig.vim')   &call minpac#add('sickill/vim-monokai')   'cal minpac#add('tyru/open-browser.vim')   "call minpac#add('mattn/emmet-vim')       %let g:phpactorPhpBin = "/usr/bin/php"       $nnoremap <leader>l :Wcodexsearch<CR>       let g:lightline = {   !      \ 'colorscheme': 'monokai',         \ 'active': {   (      \   'left': [ [ 'mode', 'paste' ],   I      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]   
      \ },         \ 'component_function': {   #      \   'cocstatus': 'coc#status'   
      \ },   	      \ }       Nlet g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']       2nnoremap <silent> K :call CocAction('doHover')<CR>   %nnoremap <leader>co :Wcodexsearch<CR>5�5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             f�d�    �                 	" Plugins   ,call minpac#add('dsawardekar/wordpress.vim')   -call minpac#add('noahfrederick/vim-composer')   ,call minpac#add('noahfrederick/vim-laravel')   fcall minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})   %call minpac#add('nelsyeung/twig.vim')   &call minpac#add('sickill/vim-monokai')   'cal minpac#add('tyru/open-browser.vim')   "call minpac#add('mattn/emmet-vim')       %let g:phpactorPhpBin = "/usr/bin/php"       $nnoremap <leader>l :Wcodexsearch<CR>       let g:lightline = {   !      \ 'colorscheme': 'monokai',         \ 'active': {   (      \   'left': [ [ 'mode', 'paste' ],   I      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]   
      \ },         \ 'component_function': {   #      \   'cocstatus': 'coc#status'   
      \ },   	      \ }       Nlet g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']       2nnoremap <silent> K :call CocAction('doHover')<CR>   %nnoremap <leader>co :Wcodexsearch<CR>5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�d�     �                 	" Plugins   ,call minpac#add('dsawardekar/wordpress.vim')   -call minpac#add('noahfrederick/vim-composer')   ,call minpac#add('noahfrederick/vim-laravel')   fcall minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})   %call minpac#add('nelsyeung/twig.vim')   &call minpac#add('sickill/vim-monokai')   'cal minpac#add('tyru/open-browser.vim')   "call minpac#add('mattn/emmet-vim')       %let g:phpactorPhpBin = "/usr/bin/php"       $nnoremap <leader>l :Wcodexsearch<CR>       let g:lightline = {   !      \ 'colorscheme': 'monokai',         \ 'active': {   (      \   'left': [ [ 'mode', 'paste' ],   I      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]   
      \ },         \ 'component_function': {   #      \   'cocstatus': 'coc#status'   
      \ },   	      \ }       Nlet g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']       2nnoremap <silent> K :call CocAction('doHover')<CR>   %nnoremap <leader>co :Wcodexsearch<CR>5�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���   . �                 	" Plugins   ,call minpac#add('dsawardekar/wordpress.vim')   -call minpac#add('noahfrederick/vim-composer')   ,call minpac#add('noahfrederick/vim-laravel')   fcall minpac#add('phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'})   %call minpac#add('nelsyeung/twig.vim')   &call minpac#add('sickill/vim-monokai')   'cal minpac#add('tyru/open-browser.vim')   "call minpac#add('mattn/emmet-vim')       %let g:phpactorPhpBin = "/usr/bin/php"       $nnoremap <leader>l :Wcodexsearch<CR>       let g:lightline = {   !      \ 'colorscheme': 'monokai',         \ 'active': {   (      \   'left': [ [ 'mode', 'paste' ],   I      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]   
      \ },         \ 'component_function': {   #      \   'cocstatus': 'coc#status'   
      \ },   	      \ }       Nlet g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-emmet']       2nnoremap <silent> K :call CocAction('doHover')<CR>   %nnoremap <leader>co :Wcodexsearch<CR>5�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �         !       �          !      autocmd FileType vim5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �          "      utocmd FileType vim5��                                                  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             f���     �          "      ssutocmd FileType vim5��                                                5��