call plug#begin('~/.vim/plugged')

" Lua
" Plug 'neovim/nvim-lspconfig'
" Plug 'onsails/lspkind-nvim'
" Plug 'nvim-lua/lsp_extensions.nvim'
" Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'glepnir/lspsaga.nvim'

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'

" types &  type servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" typescriprt & javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'MaxMEllon/vim-jsx-pretty'
" Plug 'mhartington/nvim-typescript', {'do': 'sh install.sh'}

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" git
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'junegunn/gv.vim'

" navigation
Plug 'tpope/vim-projectionist'
Plug 'mbbill/undotree'
Plug 'https://tpope.io/vim/commentary.git'
Plug 'https://tpope.io/vim/surround.git'
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'
Plug 'simrat39/symbols-outline.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'tomasr/molokai'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
Plug 'dracula/dracula-theme'
Plug 'sjl/badwolf'
Plug 'jacoborus/tender'
Plug 'joshdick/onedark.vim'
Plug 'jnurmine/Zenburn'
Plug 'connorholyday/vim-snazzy'
Plug 'lifepillar/vim-solarized8'

" notes & metrics
Plug 'https://github.com/jceb/vim-orgmode.git'
Plug 'wakatime/vim-wakatime'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/vimwiki/vimwiki.git'

" sass
Plug 'AtsushiM/search-parent.vim'
Plug 'AtsushiM/sass-compile.vim'

" c#
Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'
Plug 'https://github.com/jlcrochet/vim-razor'

" devops
Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine' " yaml
Plug 'yasuhiroki/circleci.vim'

" ctags
Plug 'https://github.com/xolox/vim-easytags.git'
Plug 'https://github.com/xolox/vim-misc.git'

" php - un-optimised
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jwalton512/vim-blade'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/ncm2-vim'
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'lunaru/vim-twig'

" linters
Plug 'dense-analysis/ale'
Plug 'scrooloose/syntastic'

" msc
Plug 'tpope/vim-dispatch'

call plug#end()

" general settings
let loaded_matchparen = 1
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
