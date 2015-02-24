au BufNewFile,BufRead *.fountain                setf fountain
au BufRead,BufNewFile *.{md,mkd,mkdn,markdown}  setf markdown

let g:pencil#wrapModeDefault = 'hard'

augroup pencil
    autocmd!
    autocmd FileType mk,mkd,mkdn,markdown   call pencil#init({'wrap': 'soft'})
    autocmd FileType fountain               call pencil#init({'wrap': 'soft'})
augroup END

let g:airline_section_x = '%{PencilMode()}'
