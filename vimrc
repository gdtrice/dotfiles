syntax on
" install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

filetype plugin indent on                   " required!
call plug#end()

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

"
" Syntastic: Code linting errors
let g:syntastic_python_checkers = ['python', 'pyflakes', 'pep8', 'pylint']
let g:syntastic_python_pep8_args="--ignore=E501,E121,E125,E126,E128,C0111"
" Jump thought errors with :lnext and :lprev
let g:syntastic_always_populate_loc_list = 1


if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

let g:airline_theme='zenburn'
