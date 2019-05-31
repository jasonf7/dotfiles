call plug#begin('/fig/home/jason/.local/share/nvim/plugged')

" The status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tmux status line
Plug 'edkolev/tmuxline.vim'

" Vim theme
Plug 'morhetz/gruvbox'
" Plug 'rakr/vim-one'
" Plug 'lifepillar/vim-solarized8'

" Indentation vertical lines
Plug 'Yggdroot/indentLine'

" Handling whitespace
Plug 'ntpeters/vim-better-whitespace'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" Commenting lines
Plug 'tpope/vim-commentary'

" Showing git changes
Plug 'airblade/vim-gitgutter'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Python indenting
Plug 'Vimjas/vim-python-pep8-indent'

" Python syntax highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

call plug#end()

" Comment python style
autocmd FileType python set commentstring=#\ %s

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" True color
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
    set t_8b=^[[48;2;%lu;%lu;%lum
    set t_8f=^[[38;2;%lu;%lu;%lum
  endif
endif

" color scheme
colorscheme gruvbox
set background=dark

" airline theme
"let g:airline_theme='solarized'
"let g:arline_solarized_bg='dark'

" Manual sourcing of tmuxline in conf
let g:airline#extensions#tmuxline#enabled = 0

" Highlight cursor's line
set cursorline

" Line numbers
set nu

" Syntax highlighting
syntax on

" Highlight search results as you type
set incsearch

" Turn search highlighting on
set hlsearch

" Autoreload
set autoread

" Auto indenting
set autoindent
filetype plugin indent on

" Python settings
autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2

