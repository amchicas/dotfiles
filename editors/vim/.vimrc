syntax on
filetype plugin on
set nocompatible



"search down subfolders
set path+=**
set wildmenu
call plug#begin('~/.vim/autoload')

Plug 'VundleVim/Vundle.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
" let Vundle manage Vundle, required
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'gorodinskiy/vim-coloresque'


Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

let mapleader = " "

" Basic
syntax on
colorscheme gruvbox
set background=dark
set encoding=utf-8
set relativenumber
set hidden
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set showmatch 
set nocompatible              " be iMproved, required
set laststatus=2 
set cursorline
highlight clear SignColumn
highlight Comment gui=italic
highlight Comment cterm=italic

set nobackup
set foldtext=foldtext()
set noswapfile
set nowrap
set noerrorbells







" Indentation
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Autocompletion
set wildmode=longest,list,full

" Tree view
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20



" Key maps
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen=1
let g:nerdtree_tabs_open_on_gui_startup=0
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


nmap <leader><C-f> :Files .<CR>
nmap <leader><C-e> :Buffers<CR>
nmap <leader><C-g> :GFiles?<CR>
nmap <leader><C-r> :! 
nmap <leader>1 :Vexplore<CR>

nmap <Leader>nt :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

silent! call repeat#set("\<Plug>surround", v:count)

