""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Caleb Logemann 
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File to store all custom functions 
" put mappings that deal with functions in this file as well

" function to toggle number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" call ToggleNumber function
nnoremap <leader>3 :call ToggleNumber()<CR>

