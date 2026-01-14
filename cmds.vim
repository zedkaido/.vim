vim9script

import './defs.vim'

export def TAB(len: string = '8')
	var n = str2nr(len)
	execute "set tabstop=" .. n
	execute "set shiftwidth=" .. n
enddef
command! -nargs=? TAB TAB(<f-args>)

# ---------------------------------------------------------

export def ID(len: number = 4): string
	var command: string = 'openssl rand -hex ' .. len .. " | tr -d '\n'"
	var result: string = system(command)
	return result
enddef

export def PUTID(length: string = "3")
	@i = ID(str2nr(length))
	normal! "ip
enddef
command! -nargs=? PUTID PUTID(<f-args>)

# ---------------------------------------------------------

export def LogDate()
	@t = Date()
	normal! "tp
enddef
command! LogDay LogDate()

export def LogTime()
	@t = "@T:" .. Time()
	normal! "tp
enddef
command! LogTime LogTime()
