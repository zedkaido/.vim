vim9script

# ------
# BUFFER
# ------
syntax off

set termguicolors
set t_Co=256
colorscheme suckless-dark

set signcolumn=number
set number
set relativenumber

set ruler
set showcmd
set listchars=trail:·
set backspace=indent,eol,start

set laststatus=2
set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P\ \笑

# --------------------------
# Text Editing + Indentation
# --------------------------
set wrap
set linebreak
set virtualedit=block

# -------------------
# SECTION: Completion
# -------------------
set complete=.,w,b,u,t,i,kspell

# -------------------------
# SECTION: File persistance
# -------------------------
set undofile # save undos on close
set undodir=~/.vim/.udir
set undolevels=1000
set noswapfile
set writebackup

# hide when file abondoned, instead of forced save and unloading
set hidden

# -------------------------
# SECTION: CMD Line Editing
# -------------------------
set history=1000
set wildmenu
set wildignore+=tags,.*.un~,*.pyc

# --------------------------
# SECTION: Search | Patterns
# --------------------------
set hlsearch
set nowrapscan # I wanna know when my search hits the bottom
set ignorecase
set smartcase

setglobal path=.,, # avoid unnecessary searches
set wildignore+=**/node_modules/**
set wildignore+=**/build/**

# --------------
# SECTION: netrw
# --------------
g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

# --------------
# SECTION: Other
# --------------
set autoread # files

# --------------------------
# SECTION: Sensible Defaults
# --------------------------
g:is_bash = 1 #bash baby bash

# Disable a legacy behavior that can break plugin maps.
set nolangremap

# Automatically detect files
filetype plugin indent on

# Delete comment character when joining commented lines.
set formatoptions+=j

# consider-this-a-keyword
set iskeyword+=\-

# Increase multi-line visual editing speed
if &ttimeoutlen == -1
	set ttimeout
	set ttimeoutlen=100
endif

# Replace the check for a tags file in the parent directory of the current
# file with a check in every ancestor directory.
# if has('path_extra') && (',' . g:tags . ',') =~# ',\./tags,'
# 	set tags-=./tags
# 	set tags-=./tags
# 	set tags^=./tags
# endif

# Enable the :Man command shipped inside Vim's man filetype plugin.
runtime ftplugin/man.vim

# Persist g:UPPERCASE variables, used by some plugins, in .viminfo.
if !empty(&viminfo)
	set viminfo^=!
endif

# Saving options in session and view files causes more problems than it solves
set sessionoptions-=options
set viewoptions-=options

# From `:help :DiffOrig`
command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

# ---

source ~/.vim/keymaps.vim
source ~/.vim/snippets.vim
source ~/.vim/cmds.vim

# fix: "vimrc" file comments
autocmd BufWinEnter vimrc setlocal commentstring=#\ %s
