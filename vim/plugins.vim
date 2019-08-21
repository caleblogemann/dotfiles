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
    "Plugin 'scrooloose/nerdtree'

    " NERD Commenter
    Plugin 'scrooloose/nerdcommenter'

    "Syntax Checking
    "Plugin 'scrooloose/syntastic'

    " CtrlP file search
    "Plugin 'ctrlpvim/ctrlp.vim'

    " Airline - status line
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " Surround
    Plugin 'tpope/vim-surround'

    " Tabular
    Plugin 'godlygeek/tabular'

    " delimitmate - autocomplete delimiters
    Plugin 'raimondi/delimitmate'

    " Tagbar shows tags in vertical bar on right
    " requires exuberant ctags
    Plugin 'majutsushi/tagbar'

    " EasyMotion
    Plugin 'easymotion/vim-easymotion'

    " SuperTab - Allows using tab for YouCompleteMe and Ultisnips
    Plugin 'ervandew/supertab'

    " Completions - Requires difficult installation
    "Plugin 'Valloric/YouCompleteMe'

    " Snippets
    Plugin 'SirVer/ultisnips'

    " Snippet Repository
    Plugin 'honza/vim-snippets'

    " Gundo - accesses vim's undo tree
    Plugin 'sjl/gundo.vim'

    " Folding
    Plugin 'pseewald/vim-anyfold'

    " Matlab
    Plugin 'MatlabFilesEdition'

    " Julia
    Plugin 'JuliaEditorSupport/julia-vim'

    " Sage
    Plugin 'petrushka/vim-sage'

    " Hardtime - habit breaking
    "Plugin 'takac/vim-hardtime'

    " Indent Guides
    "Plugin 'nathanaelkane/vim-indent-guides'
    "
    "C++ Plugins
    " a.vim - switching between header and cpp files
    Plugin  'a.vim'

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

" Fugitive Settings
    nnoremap <leader>gs :Gstatus<CR>
    nnoremap <leader>gd :Gdiff<CR>
    nnoremap <leader>gp :Gpush<CR>
    nnoremap <leader>gfm :Gpull<CR>
    nnoremap <leader>gl :Glog<CR>
    nnoremap <leader>gc :Gcommit<CR>
" NERDTree Settings
    nnoremap <leader>nt :NERDTree<CR>
    nnoremap <leader>ntq :NERDTreeClose<CR>
" Syntastic Settings
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
" CtrlP Settings
" Airline Settings
    " show all buffers when only one tab
    let g:airline#extensions#tabline#enabled = 1
    " use powerline fonts
    let g:airline_powerline_fonts = 1
" Tagbar Settings
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
" EasyMotion Settings
" YouCompleteMe Settings
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:ycm_global_ycm_extra_cont = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_confirm_extra_conf = 0
" SuperTab Settings
    let g:SuperTabDefaultCompletionType = '<C-n>'
" Ultisnips Settings
    " Trigger configuration. Do not use <tab> if you use
    " https://github.com/Valloric/YouCompleteMe.
    " If using SuperTab <tab> is okay
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
    
    let g:UltiSnipsUsePythonVersion = 3
" Gundo Settings
    nnoremap <leader>u :GundoToggle<CR>
    let g:gundo_prefer_python3 = 1
" vim-anyfold Settings
    let g:anyfold_activate=1
    set foldlevel=0
" vim-hardtime Settings
    let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
    let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
    let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
    let g:list_of_disabled_keys = []
    let g:hardtime_maxcount = 3
" a.vim Settings
    nnoremap <leader>a :A<CR>
