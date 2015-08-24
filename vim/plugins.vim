""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Caleb Logemann
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use vundle to manage plugins
" Vundle stores plugins in ~/.vim/bundle
" use the command :PluginInstall to install
" to add a plugin use command "Plugin github/repo"

"required for Vundle to run - may be turned back on afterwards
filetype off 

" if vundle is not installed clone it
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

" include vundle in run time path
set runtimepath+=~/.vim/bundle/Vundle.vim

" vundle configuration {{{
call vundle#begin()

    " Let vundle manage itself
    Plugin 'gmarik/Vundle.vim'

    " Fugitive - Git Wrapper
    "Plugin 'tpope/vim-fugitive'

    " NerdTree
    "Plugin 'scrooloose/nerdtree'

    " NERD Commenter
    "Plugin 'scrooloose/nerdcommenter'

    " Gundo - accesses vim's undo tree
    Plugin 'sjl/gundo.vim'

    " Airline - status line
    Plugin 'bling/vim-airline'

    " Indent Guides
    "Plugin 'nathanaelkane/vim-indent-guides'

    " Snippets
    "Plugin 'SirVer/ultisnips'

    " Snippet Repository
    "Plugin 'honza/vim-snippets'

    " Completions
    "Plugin 'Valloric/YouCompleteMe'

    " Matlab
    "Plugin 'MatlabFilesEdition'

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

" turn on filetype and plugins
filetype plugin indent on

" set colorscheme from list of configured colorschemes
colorscheme solarized

" Airline Settings {{{
    " show all buffers when only one tab
    let g:airline#extensions#tabline#enabled = 1
    " use powerline fonts
    let g:airline_powerline_fonts = 1
" }}}
" Gundo Settings {{{
    nnoremap <leader>u :GundoToggle<CR>         
" }}}
" NERDTree Settings {{{
    nnoremap <leader>p :NERDT
" }}}
" Ultisnips Settings {{{
    " Trigger configuration. Do not use <tab> if you use
    " https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    nnoremap <leader>s :UltiSnipsEdit<CR>
" }}}
" vim:foldmethod=marker:foldlevel=0
