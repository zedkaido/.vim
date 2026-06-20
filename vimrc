vim9script

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
set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P\ \笑

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
set undodir=~/.vim/.udir
set undolevels=1000
set noswapfile
set writebackup
set hidden
set autoread

set hlsearch
set nowrapscan # I wanna know when my search hits the bottom
set ignorecase
set smartcase

set history=1000 #cmd history

setglobal path=,, # avoid unnecessary searches
if isdirectory('src')
	setlocal path+=src/**
endif

set wildignore+=*/.git/*
set wildignore+=*/node_modules/*,*/build/*,*/target/*,*/min/*
set wildignore+=*/.svelte-kit/*,*/.wrangler/*,*/project.inlang/*
set wildignore+=tags,*.swp,*.swo,*.DS_Store

set nowildmenu
set wildmode=list:full
set completeopt=menu,noselect,fuzzy # best for LSPCompletion

g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

g:is_bash = 1 # good old bash!

# Disable a legacy behavior that can break plugin maps.
set nolangremap

if has('mouse') | set mouse=a | endif

# consider-this-a-whole-keyword
autocmd FileType html,css,scss,svelte,javascript,typescript,json,yaml setlocal iskeyword+=\-

if &ttimeoutlen == -1
	set ttimeout
	set ttimeoutlen=50
endif

# Enable the :Man command shipped inside Vim's man filetype plugin.
runtime ftplugin/man.vim

# Persist g:UPPERCASE variables, used by some plugins, in .viminfo.
if !empty(&viminfo)
	set viminfo^=!
endif

# Saving options in session and view files causes more problems than it solves
set sessionoptions-=options
set viewoptions-=options

command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

# [vim9] :h add-package
packadd! hlyank
packadd! comment
packadd! editorconfig

source ~/.vim/keymaps.vim
source ~/.vim/cmds.vim
source ~/.vim/km.vim
source ~/.vim/lsp.vim
source ~/.vim/snippets.vim
