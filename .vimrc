set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'dempfi/vim-airline-neka'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'ayu-theme/ayu-vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" IndentLine {{
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" NERDTree {{
let NERDTreeMinimalUI = 1
"}}

" Airline {{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
set laststatus=2
set ttimeoutlen=50
set noshowmode
let g:airline#extensions#branch#enabled=1
" }}

set fillchars=""
set termguicolors
let ayucolor="mirage"
colorscheme ayu

set foldlevel=20
set linebreak
set wildmenu
set confirm
set visualbell

set relativenumber
set number
set showmatch

set termguicolors
let ayucolor="mirage"

colorscheme ayu
syntax on

set noswapfile
set backspace=2

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()