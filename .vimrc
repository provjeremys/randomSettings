execute pathogen#infect()
syntax enable 
let mapleader=","       " leader is comma
colorscheme badwolf     " try it out
set showcmd             " Will display the command as it is typed
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
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

" highlight last inserted text
nnoremap gV `[v`]
inoremap jk <esc>       " jk is escape... trying it
" Super-undo
nnoremap <leader>u :GundoToggle<CR>
