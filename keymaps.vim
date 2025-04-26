vim9script

g:mapleader = " "

vmap < <gv
vmap > >gv

noremap <F2> :set paste!<CR>:echo &paste<CR>

nnoremap Q :.!sh<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>gg :vert Git<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>tw :set wrap!<CR>
nnoremap <leader>th :set invhlsearch<CR>
nnoremap <leader>tx :if exists("g:syntax_on") \| syntax off \| else \| syntax on \| endif<CR>
nnoremap <leader>ts :set spell!<CR>
nnoremap <leader>tn :set number! \| :set relativenumber!<CR>
nnoremap <leader>tt :set list! \| :echo &list <CR>
nnoremap <leader>tc :set ignorecase! \| set ignorecase?<CR>
nnoremap <leader>tm :set smartcase! \| set smartcase?<CR>

nnoremap <leader>evim :edit $MYVIMRC<CR>
nnoremap <leader>svim :source $MYVIMRC<CR>

nnoremap <leader>ll :.!ls -1Fh<CR>
nnoremap <leader>cd :cd %:p:h<CR>

# get syntax group name of text under cursor
nnoremap <leader>hs :echo synIDattr(synID(line('.'), col('.'), 1), 'name')<CR>

inoremap <M-BS> <C-W>
