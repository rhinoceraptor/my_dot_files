" Vundle stuff
set nocompatible
filetype off
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
"colorscheme railscasts
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set t_Co=256
set background=dark

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Plugin 'bling/vim-airline'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tmux-plugins/vim-tmux'
filetype plugin indent on

" Airline config
let g:airline_powerline_fonts = 1
set laststatus=2

" Press F2 to paste without messing up indentation
set pastetoggle=<F2>

" various editor settings
syntax on
set nu
set lazyredraw
set incsearch
set hlsearch
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" Turn off skipping folded lines vertically
nnoremap j gj
nnoremap k gk
set smartindent
set shiftwidth=2
set expandtab

" Auto resize splits after window resize
augroup Misc
    autocmd!
    autocmd VimResized * exe "normal! \<c-w>="
augroup END

" Automatically strip trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" Save undo and swp in a convenient location
set undofile
set undodir=~/.vim/tmp/undo//
set dir=~/.vim/tmp/swp//

" Convenient whitespace marking
set list
set listchars=tab:>\ ,eol:¬
set scrolloff=5

set mouse=a

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
