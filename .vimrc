" Vim Administration {{{

set noswapfile
set nocompatible

" }}}

" Plugins {{{

call plug#begin('~/.vim/plugged)

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'j-tom/vim-old-hope'

" Be sure to run PlugInstall after adding a plugin
call plug#end()

" }}}

" Editing Preferences {{{

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
set nowrap
set scrolloff=3   " Display at least 3 lines around the cursor
set smartcase     " search
set visualbell    " Turn off the bell sound

" }}}

" Visual Settings {{{

set encoding=utf-8
set number
set foldlevelstart=1
set colorcolumn=80
highlight ColorColumn ctermbg=1 guibg=lightgrey

if has('macunix')
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

colorscheme old-hope
" }}}

" Keybindings {{{

let mapleader = "\<SPACE>"
nnoremap <SPACE> <Nop>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>  " Quick Edit Vimrc
nnoremap <leader>n :NERDTreeToggle<cr>    " Open file explorer pane
nnoremap <leader>f gg=G                   " Format the current file
nnoremap <tab> za                         " Tab to fold/unfold
nnoremap <leader>p :CtrlP<cr>             " CtrlP quick key
nnoremap <bs> <c-^>                       " Backspace to jump to prev file
inoremap jk <Esc>                         " Easier escape

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" }}}

" Autocommands {{{

" source vimrc on edit and save
autocmd BufWritePost .vimrc source %

" Use triple-braces to fold in vim files
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
