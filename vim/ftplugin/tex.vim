" tab settings
    " set number of spaces a <Tab> stand for
    setlocal tabstop=2

    " number of spaces to be used for (auto)indent
    setlocal shiftwidth=2

    " exand <Tab> to spaces
    setlocal expandtab

    "echo('ftplugin')

" mappings
    " build tex document
    nnoremap <leader>b :!latexmk -pdf -outdir="%:p:h" "%"<CR>

    " force build
    nnoremap <leader>fb :!latexmk -pdf -f -outdir="%:p:h" "%"<CR>

    " open pdf document
    nnoremap <leader>o :!open "%:r".pdf<CR>
