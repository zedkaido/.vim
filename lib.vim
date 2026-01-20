vim9script

export def Time(): string
	return strftime("%H:%M")
enddef

export def Date(): string
	return strftime("%Y-%m-%d")
enddef

export def DateTime(): string
	return strftime("%Y-%m-%d:%H:%M")
enddef

export def Year(): string
	return strftime("%Y")
enddef

export def ID(len: number = 4): string
	var command: string = 'openssl rand -hex ' .. len .. " | tr -d '\n'"
	var result: string = system(command)
	return result
enddef
