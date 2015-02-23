set spell
set nonumber

function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe ":silent normal g\<c-g>"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count
endfunction

"set statusline=%t%m%r%=%P\ wc:%{WordCount()}
let g:airline_section_z = airline#section#create(['windowswap', '%3p%%', ' ', 'linenr', ':%3v ', ' ', 'wc:%{WordCount()}'])
