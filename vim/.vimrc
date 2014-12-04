" Caleb Logemann 
" vimrc

" Misc {{{
    " set nocompatible
    set nocompatible
    
    " last line can contain vim commands
    set modelines=1

    " disable annoying sounds
    " disable sounds on error
    set noerrorbells
    " enable visual bell instead of sound
    set visualbell
    " set visual bell to nothing
    set t_vb=

    " enable mouse for all modes
    set mouse=a
" }}}
" Leader Assignments {{{
    " map leader key
    let mapleader=","

    " map local leader key, leader key for filetype specific mappings
    let maplocalleader="\\"
" }}}
" Plugins {{{
    filetype off "required for Vundle to run - may be turned back on afterwards

    " if vundle is not installed clone it
    if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
        !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    endif

    " include vundle in run time path
    set runtimepath+=~/.dotfiles/vim/.vim/bundle/Vundle.vim

    " vundle configuration {{{
    call vundle#begin()

        " Let vundle manage itself
        Plugin 'gmarik/Vundle.vim'

        " Fugitive - Git Wrapper
        Plugin 'tpope/vim-fugitive'

        " NerdTree
        Plugin 'scrooloose/nerdtree'

        " Gundo - accesses vim's undo tree
        Plugin 'sjl/gundo.vim'

        " Airline - status line
        Plugin 'bling/vim-airline'

        " Indent Guides
        Plugin 'nathanaelkane/vim-indent-guides'

        " ColorSchemes {{{
        """""""""""""""""""""""""""""""""""""""""
        " Solarized
        Plugin 'altercation/vim-colors-solarized'

        " Molokai
        Plugin 'tomasr/molokai'

        " BadWolf
        Plugin 'sjl/badwolf'

        " Jellybeans
        Plugin 'nanotech/jellybeans.vim'

        " VividChalk
        Plugin 'tpope/vim-vividchalk'

        " Distinguished
        Plugin 'Lokaltog/vim-distinguished'

        " Many Colorschemes
        Plugin 'flazz/vim-colorschemes'
        " }}}

    call vundle#end()
    " }}}
    filetype plugin indent on

    " Gundo Settings {{{
        nnoremap <leader>u :GundoToggle<CR>         
    " }}}
    " NERDTree Settings {{{
    nnoremap <leader>p :NERDT
    " }}}
" }}}
" Color / Syntax {{{
    " enable syntax processing
    syntax enable
    
    " set background to dark for solarized
    set background=dark
    " ColorScheme
    colorscheme solarized

    " tell vim to expect LaTeX not plain TeX
    "let g:tex-flavor = "latex"
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

    " use smart indenting
    set smartindent

    augroup vimrc_autocmds
        autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
        autocmd BufEnter * match OverLength /\%82v.*/
    augroup END

    "function ShowSpaces(...)
    "    let @/='\v(\s+$)|( +\ze\t)'
    "    let oldhlsearch=&hlsearch
    "    if !a:0
    "        let &hlsearch=!&hlsearch
    "    else
    "        let &hlsearch=a:1
    "    end
    "    return oldhlsearch
    "endfunction
    
    "function TrimSpaces() range
    "     let oldhlsearch=ShowSpaces(1)
    "    execute a:firstline.",".a:lastline."substitute ///gec"
    "    let &hlsearch=oldhlsearch
    "endfunction
    
    nnoremap <leader>sts :call ShowSpaces()<CR>
    vnoremap <leader>dts :call TrimSpaces()<CR>

    " function to show spaces as underlines
    " let g:HLSpace = 1
    " let g:HLColorScheme = g:colors_name
    "function! ToggleSpaceUnderscoring()
    "     if g:HLSpace
    "        highlight Search cterm=underline gui=underline ctermbg=none guibg=none ctermfg=none guifg=none
    "        let @/ = " "
    "    else
    "        highlight clear
    "        silent colorscheme "".g:HLColorScheme
    "        let @/ = ""
    "    endif
    "    let g:HLSpace = !g:HLSpace
    "endfunction

    "nnoremap <silent> <leader>ss :call ToggleSpaceUnderscoring()<CR>
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

    " show line and column number at bottom
    set ruler

    " only redraw when necessary, speeds up macros
    set lazyredraw

    " don't wrap line
    set nowrap

    " highlight matching brackets
    set showmatch

    " number of tenths of a second to highlight matching brackets
    set matchtime=2

    " set number of lines for cmd window
    set cmdheight=2

    " show tabs and eol
    set list
    " set how tabs eol are shown
    set listchars=tab:▸\ ,eol:¬
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

    " automatically save view and load view with 
    " entering and exiting files
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
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

    " better window changing mappings
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " call ToggleNumber function
    nnoremap <leader>3 :call ToggleNumber()<CR>

    " visually highlight text from last insert
    nnoremap gV '['v']

    " surround current word with double quotes
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    
    " surround current word with single quotes
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

    " save buffer
    nnoremap <leader>w :w<CR>

    " quit buffer
    nnoremap <leader>q :q<CR>

" End of Normal Mode Mappings }}}
" Visual Mode Mappings {{{
    " surround visually highlighted text with single quote 
    vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
    " surround visually highlighted text with double quote 
    vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

    " change H to go to beginning of line
    vnoremap H ^
    vnoremap ^ <nop>

    " change L to go to end of line
    vnoremap L $h
    vnoremap $ <nop>

    vnoremap fd <esc>
" }}}
" End of Custom Mappings Section }}}
" Abbreviations {{{
    " Fix typos
    iabbrev thm theorem
    iabbrev thereom theorem
    iabbrev Thm Theorem
    iabbrev Thereom Theorem
    iabbrev Theroem Theorem
    iabbrev Reimann Riemann

    iabbrev \i \item[\# <left>
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
