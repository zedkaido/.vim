vim9script

g:mapleader = " "

vmap < <gv
vmap > >gv

noremap <F2> :set paste!<CR>:echo &paste<CR>

nnoremap Q :.!bash<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap X "_d
vnoremap <leader>y "+y
vnoremap <leader>p "_dP

nnoremap <leader>r :%s/\<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>gv :vert Git<CR>
nnoremap <leader>gg :Git<CR>
nnoremap <leader>gb :Git blame<CR>

nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <leader>tl :set list! \| set list?<CR>
nnoremap <leader>tw :setlocal wrap! \| set wrap?<CR>
nnoremap <leader>ts :setlocal spell! \| set spell?<CR>
nnoremap <leader>tc :setlocal ignorecase! \| set ignorecase?<CR>
nnoremap <leader>tn :setlocal number! \| set relativenumber!<CR>
nnoremap <leader>th :setlocal invhlsearch \| set invhlsearch?<CR>

nnoremap <leader>tx :if exists("g:syntax_on") \| syntax off \| else \| syntax on \| endif<CR>

# syntax group name of text under cursor
nnoremap <leader>hs :echo synIDattr(synID(line('.'), col('.'), 1), 'name')<CR>

nnoremap <leader>ll :.!ls -1Fh<CR>
nnoremap <leader>cd :cd %:p:h<CR>

nnoremap [a :prev<CR>
nnoremap ]a :next<CR>
nnoremap [A :first<CR>
nnoremap ]A :last<CR>

nnoremap [b :bprev<CR>
nnoremap ]b :bnext<CR>
nnoremap [B :bfirst<CR>
nnoremap ]B :blast<CR>

nnoremap [c :cprev<CR>
nnoremap ]c :cnext<CR>
nnoremap [C :cfirst<CR>
nnoremap ]C :clast<CR>

nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cfirst<CR>
nnoremap ]Q :clast<CR>

nnoremap [l :lprev<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>

nnoremap [t :tprev<CR>
nnoremap ]t :tnext<CR>
nnoremap [T :tfirst<CR>
nnoremap ]T :tlast<CR>

nnoremap <expr> >p ':<C-u>put ' .. v:register .. '<CR>==>>'
nnoremap <expr> <p ':<C-u>put ' .. v:register .. '<CR>==<<'
nnoremap <expr> =p ':<C-u>put ' .. v:register .. '<CR>=='
nnoremap <expr> ]p ':<C-u>put ' .. v:register .. '<CR>=='
nnoremap <expr> ]P ':<C-u>put ' .. v:register .. '<CR>=='

nnoremap <expr> >P ':<C-u>put! ' .. v:register .. '<CR>==>>'
nnoremap <expr> <P ':<C-u>put! ' .. v:register .. '<CR>==<<'
nnoremap <expr> =P ':<C-u>put! ' .. v:register .. '<CR>=='
nnoremap <expr> [p ':<C-u>put! ' .. v:register .. '<CR>=='
nnoremap <expr> [P ':<C-u>put! ' .. v:register .. '<CR>=='

nnoremap ]m :<C-u>execute 'move +' . v:count1<CR>==
nnoremap [m :<C-u>execute 'move -' . (v:count1 + 1)<CR>==

nnoremap <silent> ]<Space> :<C-u>execute 'put =repeat(\"\n\", v:count1 - 1)'<CR>
nnoremap <silent> [<Space> :<C-u>execute 'put! =repeat(\"\n\", v:count1 - 1)'<CR>

# only keep lines matching filter
nnoremap [f :v//d<Left><Left>
# delete all lines matching filter
nnoremap ]f :g//d<Left><Left>

# grep for pattern in all *.c and *.g files
vnoremap _g y:exe "grep /" .. escape(@", '\\/') .. "/ *.c *.h"<CR>

inoremap <C-U> <C-G>u<C-U>
inoremap <M-BS> <C-W>

vnoremap <leader>s c<C-r>=shellescape(@")<CR><Esc>

nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
