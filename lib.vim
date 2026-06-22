vim9script

export def Time(): string
	return strftime("%H:%M:%S")
enddef

export def Timestamp(): string
	return localtime()
enddef

export def Date(): string
	return strftime("%Y-%m-%d")
enddef

export def DateTime(): string
	return strftime("%Y:%m:%dT%H:%M:%S%z") # ISO 8601 (Extended)
enddef

export def Year(): string
	return strftime("%Y")
enddef

export def ID(len: number = 4): string
	var command: string = "openssl rand -hex " .. len .. " | tr -d '\n'"
	var result: string = system(command)
	return result
enddef
