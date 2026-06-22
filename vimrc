vim9script

# vim > vi
set nocompatible

syntax off

set termguicolors
set t_Co=256
colorscheme suckless-dark

set number
set relativenumber
set signcolumn=number

set ruler
set showcmd
set listchars=tab:⇥\ ,trail:·,extends:>,precedes:<
set fillchars=vert:\|,fold:-,eob:~,lastline:@
set backspace=indent,eol,start

set laststatus=2
# set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P\ \笑

set wrap
set linebreak
set virtualedit=block

filetype on
filetype plugin on
filetype indent off
set nofoldenable

set nosmartindent
set nocindent
set autoindent
set copyindent

set omnifunc=syntaxcomplete#Complete # [D](<C-x><C-o>) [C](<C-j>)
set complete=.,w,b,u,t,i

set formatoptions-=r
set formatoptions+=j

set undofile
set undolevels=1000
set undodir=~/.vim/.udir
set noswapfile
set nobackup writebackup
set autoread

set hlsearch
set wrapscan
set ignorecase
set smartcase

set history=1000 #cmd history

setglobal path=,, # avoid unnecessary searches

set completeopt=menu,noselect,fuzzy # best for LSPCompletion
set wildmode=list:longest:full
set wildignore+=*.swp,*.swo,*.DS_Store

g:is_bash = 1 # good old bash!
g:netrw_bufsettings = "noma nomod nonu nowrap ro nobl"

# consider-this-a-whole-keyword
autocmd FileType html,css,scss,svelte,javascript,typescript,json,yaml setlocal iskeyword+=\-

# Enable the :Man command shipped inside Vim's man filetype plugin.
runtime ftplugin/man.vim

# [vim9] :h add-package
packadd! hlyank
packadd! comment
packadd! editorconfig

source ~/.vim/keymaps.vim
source ~/.vim/cmds.vim
source ~/.vim/km.vim
source ~/.vim/snippets.vim

# ---| DEFAULTS |---

# Show @@@ in the last line if it is truncated.
set display=truncate

if &ttimeoutlen == -1
	set ttimeout
	set ttimeoutlen=42
endif

# Disable a legacy behavior that can break plugin maps.
set nolangremap

set nrformats-=octal

if has("mouse") | set mouse=a | endif
