vim9script

import './lib.vim'

export def TAB(len: string = '8')
	var n = str2nr(len)
	execute "set tabstop=" .. n
	execute "set shiftwidth=" .. n
enddef
command! -nargs=? TAB TAB(<f-args>)

# ---------------------------------------------------------

export def PUTID(length: string = "3")
	@i = lib.ID(str2nr(length))
	normal! "ip
enddef
command! -nargs=? PUTID PUTID(<f-args>)

# ---------------------------------------------------------

export def LogDate()
	@t = lib.Date()
	normal! "tp
enddef
command! LogDate LogDate()

export def LogTime()
	@t = "@T:" .. lib.Time()
	normal! "tp
enddef
command! LogTime LogTime()
