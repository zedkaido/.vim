vim9script

def OSX()
	edit ~/zk/km/software/osx/osx_setup.txt
enddef
command! OSX OSX()

# ---

def ID(length: number = 4): string
	var command: string = 'openssl rand -hex ' .. length .. " | tr -d '\n'"
	var result: string = system(command)
	return result
enddef

def PUTID(length: number = 3)
	@i = ID(length)
	normal! "ip
enddef
command! -nargs=? PUTID :call PUTID(<f-args>)

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
	@t = ":: " .. Date() .. ":@T:" .. Time() .. " |{\n\n}|"
	normal! "tpji
enddef
command! KMLog KMLog()

def KMNote()
	cd ~/zk/km
	const jr_path = "~/zk/km/journal/" .. Year() .. ".txt"
	execute "edit " .. jr_path 
	execute "normal! ggjji\<CR>\<Esc>O\<Esc>:KMLog\<CR>\<Esc>kzoci{"
enddef
command! KMNote KMNote()

def TSKS()
	cd ~/zk/km
	edit ~/zk/km/tasks.index.txt
enddef
command! TSKS TSKS()

def TSKNew()
	var taskID = ID(3)
	@t = taskID
	execute "normal! o[ ] :: #" .. taskID "\<Esc>Bh"
enddef
command! TSKNew :call TSKNew()

def TSKArchive()
	cd ~/zk/km
	edit ~/zk/km/tasks.archive.txt
enddef
command! TSKArchive TSKArchive()

def ARCTSK(line1: number, line2: number)
	var selection = getline(line1, line2)

	var date_str = DateTime()
	@a = join(map(selection, (_, line): string => '(' .. date_str .. ') ' .. line), "\n")

	execute $":{line1},{line2}d"
	execute "edit ~/zk/km/tasks.archive.txt"
	execute "normal! gg)o\<Esc>\"ap"
enddef
command! -range ARCTSK :call ARCTSK(<line1>, <line2>)

command! -nargs=1 KMGrep vimgrep "<args>" ~/zk/km/**/*.txt 

def WEBM()
	edit ~/zk/km/webmarks.index.txt
enddef
command! WEBM WEBM()
