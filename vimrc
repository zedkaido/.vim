vim9script

# --------------- 
# SECTION: BUFFER
# ---------------
syntax off 

set termguicolors
colorscheme zk-yang

set signcolumn=number
set relativenumber

set ruler
set showcmd

set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%=%-14.(%l,%c%V%)\ %P\ \笑

# -----------------------------------
# SECTION: Text Editing + Indentation
# -----------------------------------
set nowrap

set tabstop=3
set softtabstop=3
set shiftwidth=3

set noexpandtab
set smarttab
set autoindent
set backspace=indent,eol,start

set virtualedit=block

# -------------------
# SECTION: Completion
# -------------------
set complete-=i # searching #includes can be slow

# -------------------------
# SECTION: File persistance
# -------------------------
set undofile # save undos on close
set undodir=~/.vim/.udir
set undolevels=1000
set noswapfile
set writebackup

# TODO: explore hidden mode?
# set hidden

# -------------------------
# SECTION: CMD Line Editing
# -------------------------
set history=1000 
set wildmenu
set wildmode=full
set wildignore+=tags,.*.un~,*.pyc

# --------------------------
# SECTION: Search | Patterns
# --------------------------
set incsearch
set ignorecase
set smartcase

setglobal path=.,, # avoid unnecessary searches
set path+=**
set wildignore+=**/node_modules/** 
set wildignore+=**/build/**

# ----------------
# SECTION: Keymaps
# ----------------
g:mapleader = " "

vmap < <gv
vmap > >gv

noremap <F2> :set paste!<CR>:echo &paste<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>gg :vert Git<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>evim :edit $MYVIMRC<CR>
nnoremap <leader>svim :source $MYVIMRC<CR>
nnoremap <leader>tw :set wrap!<CR>
nnoremap <leader>th :set invhlsearch<CR>
nnoremap <leader>ts :if exists("g:syntax_on") \| syntax off \| else \| syntax enable \| endif<CR>
nnoremap <leader>tl :set spell!<CR> 

# LINUX
noremap <M->> <C-w>5>
noremap <M-<> <C-w>5<
noremap <M-+> <C-w>5+
noremap <M--> <C-w>5-

# OSX
noremap > <C-w>5>
noremap < <C-W>5<
noremap + <C-W>5+
noremap - <C-W>5-

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
# Disable a legacy behavior that can break plugin maps.
set nolangremap

# Automatically detect files
filetype plugin indent on

# Prevent automatic line inserts with `o`
autocmd FileType * setlocal formatoptions-=o 

# Delete comment character when joining commented lines.
set formatoptions+=j 

# Increase multi-line visual editing speed
if &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100 
endif

# Replace the check for a tags file in the parent directory of the current
# file with a check in every ancestor directory.
# if has('path_extra') && (',' . g:tags . ',') =~# ',\./tags,'
#   set tags-=./tags
#   set tags-=./tags
#   set tags^=./tags
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
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

# Allow color schemes to do bright colors without forcing bold.
# TODO: study and use this latter for colorscheme dev.
set t_Co=256

# -----------------
# SECTION: COMMANDS 
# -----------------
def Today(): string
	return strftime('%Y-%m-%d')
enddef

def Time(): string
	return strftime('%H:%M')
enddef

def KM()
	edit ~/zk/km
enddef

def KMT()
	const path = $HOME .. '/zk/km/' .. Today() .. '.txt'
	execute 'edit' path
enddef

def LogDay()
	@t = Today()
	normal! "tp
enddef

def LogTime()
	@t = "@T:" .. Time() .. ":"
	normal! "tp
enddef

command KM KM()
command KMT KMT()
command LogDay LogDay()
command LogTime LogTime()
