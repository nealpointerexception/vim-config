

set paste
set showcmd

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'

call plug#end()

" airline things
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <SPACE> <Nop>
let mapleader=" "

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>ll :bnext<CR>

" Move to the previous buffer
nmap <leader>hh :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>


" theme
let g:airline_theme='papercolor'
set termguicolors     " enable true colors support
" let ayucolor="dark"   " for dark version of theme
let g:seoul256_background = 234 
let g:seoul256_light_background = 253

nmap <C-S-l> :colo seoul256-light<CR> 
colorscheme seoul256

" Nerd tree things
map <C-t> :NERDTreeToggle  <CR>
autocmd BufEnter * lcd %:p:h

" window remaps
nmap <leader>wl <C-w>l <CR>
nmap <leader>wh <C-w>h <CR>
nmap <leader>wj <C-w>j <CR>
nmap <leader>wk <C-w>k <CR>
nmap <leader>wq <C-w>c <CR>
nmap <leader> we <C-w>= <CR>


nmap <leader>vs :vs<CR>
nmap <leader>s :split<CR>

nmap <leader>ml <C-w>L<CR>
nmap <leader>mh <C-w>H<CR>
nmap <leader>mj <C-w>J<CR>
nmap <leader>mk <C-w>K<CR>

