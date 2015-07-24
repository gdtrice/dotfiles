execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=","
set encoding=utf-8
set ts=4 sw=4 expandtab


" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,trail:•

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" ----------------------------------------------------------------------------
"   Visual
" ----------------------------------------------------------------------------
set incsearch
set number

" ----------------------------------------------------------------------------
"   Custom mappings
" ----------------------------------------------------------------------------
command! WQ wq
command! Wq wq
command! Tabe tabe
command! Tabp tabp
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>

" toggles
nmap <leader>l :set list!<CR>
nmap <leader>nm :set number!<CR>

" Plugins
" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
"
" Syntastic: Code linting errors
Plug 'scrooloose/syntastic'
" Don't user pylint even though it's installed
let g:syntastic_python_checkers = ['python', 'pyflakes', 'pep8']
let g:syntastic_python_pep8_args="--ignore=E501,E121,E125,E126,E128,C0111"
" Jump thought errors with :lnext and :lprev
let g:syntastic_always_populate_loc_list = 1

call plug#end()
