vim9script

setlocal wrap

setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2

setlocal autoindent

setlocal comments=://
setlocal commentstring=//\ %s
autocmd BufWinEnter *.txt setlocal commentstring=//\ %s

setlocal foldmethod=marker
