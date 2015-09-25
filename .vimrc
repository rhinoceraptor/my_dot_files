" Vundle stuff
set nocompatible
filetype off
colorscheme material-theme
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

set t_Co=256
set background=dark
syntax enable

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tmux-plugins/vim-tmux'
filetype plugin indent on

" Press F2 to paste without messing up indentation
set pastetoggle=<F2>

" various editor settings
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

" Enable mouse
set mouse=a

"Set tab display width to 2 spaces
set tabstop=2
" Show NERDTree automatically in the pwd if vim called with no arguments
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
let NERDTreeShowHidden=1

" Fix time out length to not wait excessively long switching to normal mode
set timeoutlen=1000 ttimeoutlen=0

cnoremap sudow w !sudo tee % >/dev/null

