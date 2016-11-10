""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Caleb Logemann
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use vundle to manage plugins
" Vundle stores plugins in ~/.vim/bundle
" use the command :PluginInstall to install
" to add a plugin use command "Plugin github/repo"

" if vundle is not installed clone it
let vundleInstalled=0
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let vundleInstalled=1
endif

" include vundle in run time path
set runtimepath+=~/.vim/bundle/Vundle.vim

" vundle configuration {{{
"required for Vundle to run - may be turned back on afterwards
filetype off 
call vundle#begin()

    " Let vundle manage itself
    Plugin 'gmarik/Vundle.vim'

    " Fugitive - Git Wrapper
    Plugin 'tpope/vim-fugitive'

    " vim-gitgutter shows signs for added, changed and removed lines
    Plugin 'airblade/vim-gitgutter'

    " NerdTree
    Plugin 'scrooloose/nerdtree'

    " NERD Commenter
    Plugin 'scrooloose/nerdcommenter'

    " CtrlP file search
    Plugin 'ctrlpvim/ctrlp.vim'

    " Airline - status line
    Plugin 'bling/vim-airline'
    
    " Tagbar shows tags in vertical bar on right
    " requires exuberant ctags
    Plugin 'majutsushi/tagbar'

    " EasyMotion
    Plugin 'easymotion/vim-easymotion'

    " Snippets
    Plugin 'SirVer/ultisnips'

    " Snippet Repository
    "Plugin 'honza/vim-snippets'

    " Completions - Requires difficult installation
    "Plugin 'Valloric/YouCompleteMe'

    " Gundo - accesses vim's undo tree
    Plugin 'sjl/gundo.vim'

    " Matlab
    Plugin 'MatlabFilesEdition'

    " Sage
    Plugin 'petrushka/vim-sage'

    " Indent Guides
    "Plugin 'nathanaelkane/vim-indent-guides'

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
    filetype plugin indent on
    " }}}

if vundleInstalled
    PluginInstall
endif

" set colorscheme from list of configured colorschemes
colorscheme solarized

" Fugitive Settings {{{
    nnoremap <leader>gs :Gstatus<CR>
    nnoremap <leader>gd :Gdiff<CR>
    nnoremap <leader>gp :Gpush<CR>
    nnoremap <leader>gfm :Gpull<CR>
    nnoremap <leader>gl :Glog<CR>
    nnoremap <leader>gc :GCommit<CR>
" }}}
" NERDTree Settings {{{
    nnoremap <leader>nt :NERDT
" }}}
" CtrlP Settings {{{
" }}}
" Airline Settings {{{
    " show all buffers when only one tab
    let g:airline#extensions#tabline#enabled = 1
    " use powerline fonts
    let g:airline_powerline_fonts = 1
" }}}
" Tagbar Settings {{{
    let g:tagbar_width = 30
    nmap <leader>t :TagbarToggle<CR>

    let g:tagbar_type_tex = {
        \ 'kinds' : [
            \ 'p:parts',
            \ 'c:chapters',
            \ 's:sections',
            \ 'u:subsections',
            \ 'b:subsubsections',
            \ 'P:paragraphs:1:0',
            \ 'G:subparagraphs:1:0',
            \ 'l:labels:0:0',
            \ 'i:items:1:0',
        \ ],
    \ }
" }}}
" EasyMotion Settings {{{
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

    " Added ~/dotfiles/vim to runtimepath so that Ultisnips directory
    " can be detected and snippets can be stored in git repo
    let g:UltiSnipsSnippetDirectories=[$HOME.'/dotfiles/vim/UltiSnips']
    let g:UltiSnipsSnippetsDir=$HOME.'/dotfiles/vim/UltiSnips'
" }}}
" Gundo Settings {{{
    nnoremap <leader>u :GundoToggle<CR>         
" }}}
" 
" vim:foldmethod=marker:foldlevel=0
