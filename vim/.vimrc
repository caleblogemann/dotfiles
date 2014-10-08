" Caleb Logemann 
" vimrc

" Misc {{{
    " set nocompatible
    set nocompatible
    
    " last line can contain vim commands
    set modelines=1
" }}}
" Color / Syntax {{{
    " enable syntax processing
    syntax enable
" }}}
" Tabs and Spaces {{{
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
" }}}
" UI Config - Random Visual Settings {{{
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
" }}}
" Searching Settings {{{
    " search as characters are entered, incremental search
    set incsearch

    " highlight matches of search
    set hlsearch

    " keymap to turn off search highlighting
    " TODO learn more about keymappings and <leader> key
    nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
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
" }}}
" Leader Assignments {{{
    " map leader key
    let mapleader=","

    " map local leader key, leader key for filetype specific mappings
    let maplocalleader="\\"
" }}}
" Custom Mappings {{{
" Insert Mode Mappings {{{

    " mappings to esc key to enter normal/command mode
    inoremap jk <esc>
    inoremap <esc> <nop>

" End of Insert Mode Mappings }}}
" Normal Mode Mappings {{{

    " map - key to move line down 1 line
    nnoremap - ddp
    " map _ key to move line up 1 line
    nnoremap _ dd2kp

    " open vimrc
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
    
    " move vertically by visual line instead of wrapped lines
    nnoremap j gj
    nnoremap k gk

    " change H to go to beginning of line
    nnoremap H ^
    nnoremap ^ <nop>

    " change L to go to end of line
    nnoremap L $
    nnoremap $ <nop>

    " visually highlight text from last insert
    nnoremap gV '['v']

    " surround current word with double quotes
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    
    " surround current word with single quotes
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
    
" End of Normal Mode Mappings }}}
" Visual Mode Mappings {{{
    " surround visually highlighted text with single quote 
    vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
    " surround visually highlighted text with double quote 
    vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" }}}
" End of Custom Mappings Section }}}
" Abbreviations {{{
    " Fix typos
    iabbrev thm theorem
    iabbrev thereom theorem
" }}}
" Backups {{{
    " enable backups
    set backup

    " set backup directory place in vim directory 
    set backupdir=~/.vim/tmp

    " file names that match will not be backup
    set backupskip=~/.vim/tmp/*

    " set directory to store swp files
    set directory=~/.vim/tmp
" }}}
" CtrlP Settings {{{
    " TODO look into CtrlP
" }}}
" Custom Functions {{{
    " toggle between number and relativenumber
    function! ToggleNumber()
        if(&relativenumber == 1)
            set norelativenumber
            set number
        else
            set relativenumber
        endif
    endfunc
" }}}
" vim:foldmethod=marker:foldlevel=0
