vim9script

def TAB(len: string = '8')
	var n = str2nr(len)
	execute "set tabstop=" .. n
	execute "set shiftwidth=" .. n
enddef
command! -nargs=? TAB TAB(<f-args>)

# ---------------------------------------------------------

def ID(len: number = 4): string
	var command: string = 'openssl rand -hex ' .. len .. " | tr -d '\n'"
	var result: string = system(command)
	return result
enddef

def PUTID(length: string = "3")
	@i = ID(str2nr(length))
	normal! "ip
enddef
command! -nargs=? PUTID PUTID(<f-args>)

# ---------------------------------------------------------

def Time(): string
	return strftime("%H:%M")
enddef

def Date(): string
	return strftime("%Y-%m-%d")
enddef

def DateTime(): string
	return strftime("%Y-%m-%d:%H:%M")
enddef

def Year(): string
	return strftime("%Y")
enddef

def LogDate()
	@t = Date()
	normal! "tp
enddef
command! LogDay LogDate()

def LogTime()
	@t = "@T:" .. Time()
	normal! "tp
enddef
command! LogTime LogTime()
