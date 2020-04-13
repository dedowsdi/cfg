call misc#proj#load_map('c')

nnoremap <f7> :call <sid>make()<cr>
nnoremap <f5> :call <sid>run()<cr>
nnoremap <c-f5> :call <sid>debug()<cr>

set splitbelow

function s:make()
  CloseFinishedTerminal
  bot ter ++rows=16 make
  wincmd p
endfunction

function s:run()
  CloseFinishedTerminal
  bot ter ++rows=16 bash -c "make && ./build/a.out"
  wincmd p
endfunction

function s:debug() abort
  Termdebug ./build/a.out
  wincmd p
  wincmd H
  wincmd p
endfunction
