vim9script

# -------------------------
# > km (Knowledge Map) CMDs
# -------------------------
import './lib.vim'

def KM()
	cd ~/zk/km
	edit ~/zk/km
enddef

def JR()
	const jr_path = "~/zk/km/journal/" .. lib.Year() .. ".txt"
	execute "edit " .. jr_path
enddef

def KMLog()
	var ft = toupper(strftime("[%b][%d][%a][%H:%M:%S]"))
	@t = $":: {ft} |\{\n\n\}|"
	normal! "tpji
enddef

def KMNote()
	const jr_path = $"~/zk/km/journal/{lib.Year()}.txt"
	execute "edit " .. jr_path
	execute "normal! ggjji\<CR>\<Esc>O\<Esc>:KMLog\<CR>\<Esc>kci{\<Tab>"
enddef

command! KM KM()
command! JR JR()
command! KMLog KMLog()
command! KMNote KMNote()
command! -nargs=1 KMGrep vimgrep "<args>" ~/zk/km/**/*.txt

# --- #

def TSKS()
	edit ~/zk/km/tasks.index.txt
enddef

def TSKNew()
	var taskID = lib.ID(3)
	@c = "#" .. taskID
	execute $"normal! o[ ] :: #{taskID} \<Esc>Bhi"
enddef

command! TSKS TSKS()
command! TSKNew TSKNew()
command! TSKArchive edit ~/zk/km/tasks.archive.txt

# --- #

command! OSX edit ~/zk/km/software/osx/osx.txt
command! OSXSETUP edit ~/zk/km/software/osx/osxsetup.txt
command! WEBM edit ~/zk/km/webmarks.index.txt
