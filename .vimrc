execute pathogen#infect()
syntax enable 
let mapleader=","       " leader is comma
colorscheme badwolf     " try it out
set showcmd             " Will display the command as it is typed
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" enables Leader + y to do clipboard copy in visual mode
vnoremap <silent> <leader>y :<CR>:let @a=@" \| execute "normal! vgvy" \| let res=system("pbcopy", @") \| let @"=@a<CR> 
filetype indent on      " load filetype-specific indent files
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldlevelstart=10   " open most folds by default

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
map B ^
map E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" move between windows sanely
map <C-J> <C-W>j<C-W><CR>
map <C-K> <C-W>k<C-W><CR>
map <C-H> <C-W>h<C-W><CR>
map <C-L> <C-W>l<C-W><CR>

" highlight last inserted text
nnoremap gV `[v`]
" jk is escape... trying it 
inoremap jk <esc>
" Super-undo
nnoremap <leader>u :GundoToggle<CR>
" open ag.vim
nnoremap <leader>a :Ag
" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>:!source ~/.zshrc<CR><CR>


" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
