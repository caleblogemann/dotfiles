""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Caleb Logemann 
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert Mode Mappings {{{
    " mappings to esc key to enter normal/command mode
    inoremap jk <esc>
    "inoremap <esc> <nop>

    " new line
    "inoremap <leader>n <esc>80\|gea<CR><esc>$a
" End of Insert Mode Mappings }}}
" Normal Mode Mappings {{{
    " save buffer
    nnoremap <leader>w :w<CR>
    nnoremap <leader>fw :w!<CR>

    " quit buffer
    nnoremap <leader>q :q<CR>
    nnoremap <leader>fq :q!<CR>

    " reload file
    nnoremap <leader>e :e<CR>

    " open vimrc
    nnoremap <leader>ev :vsplit $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>

    " open other vim files
    nnoremap <leader>ep :vsplit ~/dotfiles/vim/plugins.vim<CR>
    nnoremap <leader>em :vsplit ~/dotfiles/vim/mappings.vim<CR>
    nnoremap <leader>ef :vsplit ~/dotfiles/vim/functions.vim<CR>
    nnoremap <leader>ea :vsplit ~/dotfiles/vim/abbreviations.vim<CR>

    " move vertically by visual line instead of wrapped lines
    nnoremap j gj
    nnoremap k gk

    " change H to go to beginning of line
    nnoremap H ^
    nnoremap ^ <nop>

    " change L to go to end of line
    nnoremap L $
    nnoremap $ <nop>

    " change K to go to top of file
    nnoremap K gg

    " change J to go to bottom of file
    nnoremap J G

    " better window changing mappings
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " visually highlight text from last insert
    nnoremap gV '['v']

    " goto column 80
    nnoremap <leader>f 80\|

    " copy line and paste below
    nnoremap <leader>j yyp

    " paste in normal mode
    nnoremap <leader>p "*p

    " run make
    nnoremap <leader>m :make<CR>

    " detect filetype apply syntax
    nnoremap <leader>ft :filetype detect<CR>

    " enable spellcheck
    nnoremap <leader>sc :setlocal spell spelllang=en_us<CR>

    " change working directory to directory of current file
    nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

    " reprocess syntax fromstart
    nnoremap <leader>ss :syntax sync fromstart<CR>

    " keymap to turn off search highlighting
    nnoremap <leader>nh :nohlsearch<CR>

    " Folding mappings {{{
        " remap space to open/close fold
        nnoremap <leader>z za
        " remap <space><space> to redo and close all folds
        nnoremap <leader>fz zxzM
    " }}}

    " LaTeX Mappings {{{
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " build tex document
"    nnoremap <leader>b :!latexmk -pdf -outdir="%:p:h" "%"<CR>
    " force build
"    nnoremap <leader>fb :!latexmk -pdf -f -outdir="%:p:h" "%"<CR>

    " open pdf document
    "nnoremap <leader>o :!open "%:r".pdf<CR>
    " End of Latex Mappings }}}

" End of Normal Mode Mappings }}}
" Visual Mode Mappings {{{
    " surround visually highlighted text with single quote
    vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
    " surround visually highlighted text with double quote
    vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
    " surround visually highlighted text with dollar sign
    vnoremap <leader>$ <esc>`<i$<esc>`>la$<esc>

    " change H to go to beginning of line
    vnoremap H ^
    vnoremap ^ <nop>

    " change L to go to end of line
    vnoremap L $h
    vnoremap $ <nop>

    " use mapping fd to escape visual mode
    vnoremap fd <esc>
    " disable escape key to train fingers
    vnoremap <esc> <nop>

    " copy to clipboard
    vnoremap <leader>c "*y
" }}}
" vim:foldmethod=marker:foldlevel=0
