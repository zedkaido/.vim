vim9script

def OSX()
	edit ~/zk/km/software/osx/osx_setup.txt
enddef
command! OSX OSX()

# ---

def Time(): string
	return strftime("%H:%M")
enddef
def Day(): string
	return strftime("%Y-%m-%d")
enddef
def Year(): string
	return strftime("%Y")
enddef

def LogDay()
	@t = Day()
	normal! "tp
enddef
command! LogDay LogDay()

def LogTime()
	@t = "@T:" .. Time()
	normal! "tp
enddef
command! LogTime LogTime()

def KM()
	cd ~/zk/km
	edit ~/zk/km/
enddef
command! KM KM()

def JR()
	const jr_path = "~/zk/km/journal/" .. Year() .. ".txt"
	execute "edit " .. jr_path 
enddef
command! JR JR()

def KMLog()
	@t = ":: " .. Day() .. ":@T:" .. Time() .. " |{\n\n}|"
	normal! "tpji
enddef
command! KMLog KMLog()

def KMNote()
	cd ~/zk/km
	const jr_path = "~/zk/km/journal/" .. Year() .. ".txt"
	execute "edit " .. jr_path 
	execute "normal! ggjji\<CR>\<Esc>O\<Esc>:KMLog\<CR>\<Esc>"
enddef
command! KMNote KMNote()

command! -nargs=1 KMGrep vimgrep "<args>" ~/zk/km/**/*.txt 

def WEBM()
	edit ~/zk/km/webmarks.index.txt
enddef
command! WEBM WEBM()
