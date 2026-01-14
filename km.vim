vim9script

# -------------------------
# > km (Knowledge Map) CMDs
# -------------------------
import './defs.vim'

def KM()
	cd ~/zk/km 
	edit ~/zk/km 
enddef

def JR()
	cd ~/zk/km
	const jr_path = "~/zk/km/journal/" .. defs.Year() .. ".txt"
	execute "edit " .. jr_path 
enddef

def KMLog()
	@t = ":: " .. defs.Date() .. ":@T:" .. defs.Time() .. " |{\n\n}|"
	normal! "tpji
enddef

def KMNote()
	cd ~/zk/km
	const jr_path = "~/zk/km/journal/" .. defs.Year() .. ".txt"
	execute "edit " .. jr_path 
	execute "normal! ggjji\<CR>\<Esc>O\<Esc>:KMLog\<CR>\<Esc>kzoci{"
enddef

command! KM KM()
command! JR JR()
command! KMLog KMLog()
command! KMNote KMNote()
command! -nargs=1 KMGrep vimgrep "<args>" ~/zk/km/**/*.txt 

# ---------------------------------------------------------

def TSKS()
	cd ~/zk/km
	edit ~/zk/km/tasks.index.txt
enddef

def TSKNew()
	var taskID = ID(3)
	@c = "#" .. taskID # `c` :: for current task
	execute "normal! o[ ] :: #" .. taskID "\<Esc>Bhi"
enddef

def ARCTSK(line1: number, line2: number)
	var selection = getline(line1, line2)

	var date_str = defs.DateTime()
	@a = join(map(selection, (_, line): string => '(' .. date_str .. ') ' .. line), "\n")

	execute $":{line1},{line2}d"
	execute "edit ~/zk/km/tasks.archive.txt"
	execute "normal! gg)o\<Esc>\"ap"
enddef

command! TSKS TSKS()
command! TSKNew TSKNew()
command! -range ARCTSK ARCTSK(<line1>, <line2>)
command! TSKArchive cd ~/zk/km | edit ~/zk/km/tasks.archive.txt 

# ---------------------------------------------------------

command! OSX cd ~/zk/km | edit ~/zk/km/software/osx/osx.txt 
command! OSXSETUP cd ~/zk/km | edit ~/zk/km/software/osx/osxsetup.txt
command! WEBM cd ~/zk/km | edit ~/zk/km/webmarks.index.txt
