if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

" Plugin List
Plug 'tpope/vim-sensible'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug '/usr/local/opt/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'yggdroot/indentline'
Plug 'godlygeek/tabular'
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

" VIM SETTING
set number
set relativenumber
set ignorecase
set smartcase
set tabstop=4
set softtabstop=0
set shiftwidth=4
set nobackup
set noswapfile
set nowrap
set mouse=a
" VIM MAP
map pp :pu<CR>
" VIM Color
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Plugin Setting
"" Deoplete
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/nmuntaaza/.virtualenvs/data-science/bin/python3'
set completeopt-=preview

"" Nerdtree
autocmd StdinReadPre * let s:std_in=1
""" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
""" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""" Map
map <C-b> :NERDTreeToggle<CR>
""" Setting
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*.wav,*.m4a

"" Multicursor
func! Multiple_cursors_before()
	if deoplete#is_enabled()
		call deoplete#disable()
		let g:deoplete_is_enable_before_multi_cursors = 1
	else
		let g:deoplete_is_enable_before_multi_cursors = 0
	endif
endfunc
func! Multiple_cursors_after()
	if g:deoplete_is_enable_before_multi_cursors
		call deoplete#enable()
	endif
endfunc

"" NERDcommenter
let g:NERDSpaceDelims = 2

"" Theme
" let ayucolor="dark"
" colorscheme ayu
set background=dark
colorscheme palenight
let g:lightline = {
		\ 'colorscheme': 'palenight',
		\ }

" PREFERENCES
inoremap jk <ESC>
