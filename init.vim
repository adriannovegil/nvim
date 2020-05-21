" References
" https://spacevim.org/use-vim-as-a-java-ide/
" https://github.com/fatih/vim-go
" https://mendo.zone/fun/neovim-setup-haskell/
" https://github.com/johnmendonca/nvim
" https://stsewd.dev/es/posts/neovim-plugins/
" https://programadorwebvalencia.com/diferencias-entre-neovim-y-vim/
" https://github.com/jie-meng/VimConfig
" https://github.com/junegunn/vim-plug

call plug#begin('~/.config/nvim/plugged')

" coc, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" window appearance
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" colorschemes
Plug 'flazz/vim-colorschemes'

" edit
Plug 'skwp/greplace.vim'
Plug 'arthurxavierx/vim-caser'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

" shell
Plug 'christoomey/vim-tmux-navigator'

" search
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" language
Plug 'sheerun/vim-polyglot'
Plug 'moll/vim-node'
Plug 'kannokanno/previm'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'vim-scripts/a.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovimhaskell/haskell-vim'
Plug 'parsonsmatt/intero-neovim'

lang en_US.UTF-8

call plug#end()

"Hack for neovim and vim-tmux-navigator
"nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" Ctrl-{hjkl} for navigating out of terminal panes
"tnoremap <C-h> <C-\><C-n><C-w>h
"tnoremap <C-j> <C-\><C-n><C-w>j
"tnoremap <C-k> <C-\><C-n><C-w>k
"tnoremap <C-l> <C-\><C-n><C-w>l

" load config from modules
source ~/.config/nvim/plugin-config/neovim.config.conf
source ~/.config/nvim/plugin-config/nerdtree.config.conf
source ~/.config/nvim/plugin-config/vim_airline.config.conf
source ~/.config/nvim/plugin-config/coc.config.conf
source ~/.config/nvim/plugin-config/colorschemes.config.conf
source ~/.config/nvim/plugin-config/git_fugitive.config.conf
source ~/.config/nvim/plugin-config/greplace.config.conf
source ~/.config/nvim/plugin-config/previm.config.conf
source ~/.config/nvim/plugin-config/javascript_libraries_syntax.config.conf
source ~/.config/nvim/plugin-config/nerdcommenter.config.conf
source ~/.config/nvim/plugin-config/haskell-vim.conf
