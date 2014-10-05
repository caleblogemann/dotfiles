" Caleb Logemann 
" vimrc

" ---------------------------------
    " Color / Syntax
    " enable syntax processing
    syntax enable
" ---------------------------------
    " Misc
    " last line can contain vim commands
    set modelines=1
" ---------------------------------
    " Tabs and Spaces
    " how many visual spaces a tab counts for
    set tabstop=4 

    " how many visual spaces a when editting/inserting a tab
    set softtabstop=4 

    " how many spaces with indent operators << or >>
    set shiftwidth=4 

    " change all tabs to spaces
    set expandtab 
     
    " keep current indentation level
    set autoindent
" ---------------------------------
    " UI Config - Random Visual Settings
    " show line numbers on left edge
    set number

    " show last command in bottom right
    set showcmd

    " highlight current line/line with cursor
    set cursorline

    " provide graphical menu to cycle through autocomplete
    set wildmenu

    " only redraw when necessary, speeds up macros
    set lazyredraw

    " highlight matching brackets
    set showmatch
" ---------------------------------
    " Searching Settings
    " search as characters are entered, incremental search
    set incsearch

    " highlight matches of search
    set hlsearch

    " keymap to turn off search highlighting
    " TODO learn more about keymappings and <leader> key
    nnoremap <leader><space> :nohlsearch<CR>
" ---------------------------------
    " Folding
    " enable folding
    set foldenable

    " open more folds by default
    set foldlevelstart=10

    " maximum number of nested folds
    set foldnestmax=10

    " remap space to open/close fold
    nnoremap <space> za

    " fold is based indentation
    set foldmethod=indent
" ---------------------------------
    " Movement
    " move vertically by visual line instead of wrapped lines
    nnoremap j gj
    nnoremap k gk

    " visually highlight text from last insert
    nnoremap gV '['v']
" ---------------------------------
    " Leader Shortcuts/Custom Mappings
    " map leader key
    let mapleader=","
    
    " mappings to esc key to enter normal/command mode
    inoremap jk <esc>
    inoremap jj <esc>
    inoremap kk <esc>

    " open vimrc
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
" ---------------------------------
    " Backups 
    " enable backups
    set backup

    " set backup directory place in vim directory 
    set backupdir=~/.vim/tmp

    " file names that match will not be backup
    set backupskip=~/.vim/tmp/*

    " set directory to store swp files
    set directory=~/.vim/tmp
" ---------------------------------
    " CtrlP Settings
    " TODO look into CtrlP
" ---------------------------------
" vim:foldlevel=0
