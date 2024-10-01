" ####################### Behold my vimrc #########################

autocmd VimEnter \* echo "Welcome, Kumaran!"

" install plugins

call plug#begin('~/.vim/plugged')


Plug 'machakann/vim-highlightedyank'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'

call plug#end()

filetype plugin indent on
syntax on

" ######################## key remaps

" esc in insert mode
inoremap kj <esc>

" esc in command mode
cnoremap kj <C-C>
" " Note: In command mode mappings to esc run the command for some odd
" " historical vi compatibility reason. We use the alternate method of
" " existing which is Ctrl-C

" https://vim.fandom.com/wiki/Moving_lines_up_or_down#Mappings_to_move_lines

" ######################### set options

set title
set autoindent
set smartindent
set backspace=indent,eol,start
set hlsearch
set ruler
set incsearch
set encoding=UTF-8

set wildmenu
set showmode
set number relativenumber
set showmatch

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

" ######### use copy and paste from vim to clipboard and clipboad to vim
set clipboard=unnamedplus

" ############# common typos
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Set set

" ################ functions
function! s:swap_lines(n1, n2)
let line1 = getline(a:n1)
let line2 = getline(a:n2)
call setline(a:n1, line2)
call setline(a:n2, line1)
endfunction

function! s:swap_up()
let n = line('.')
if n == 1
return
endif

    call s:swap_lines(n, n - 1)
    exec n - 1

endfunction

function! s:swap_down()
let n = line('.')
if n == line('$')
return
endif

    call s:swap_lines(n, n + 1)
    exec n + 1

endfunction

noremap <silent> <c-s-up> :call <SID>swap_up()<CR>
noremap <silent> <c-s-down> :call <SID>swap_down()<CR>

" another way to swap lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" copy current paragraph, go to next new line and paste
nnoremap cp yap<S-}>p

" persistent undo
let s:undodir = "~/.vim/undodir" . $USER
let &undodir=s:undodir
set undofile

let mapleader = ","

" repeat f or t in reverse
nnoremap <leader>, ,
