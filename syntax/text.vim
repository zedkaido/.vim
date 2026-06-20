syntax keyword TODO TODO contained

syn match txtTitle "^\s*:\+ .*[^|\{]"
hi txtTitle term=bold cterm=bold gui=bold

syn match txtTAG "#[^: ]\+" containedin=txtTitle
hi def link txtTAG Comment

syn match txtTODO "#TODO" contains=TODO
hi def link txtTODO Comment

syn match txtComment "\/\/ .*$" contains=TODO
hi def link txtComment Comment 

syn match txtBlockDefStart "|.*[\{]"
syn match txtBlockDefEnd "[\}]|"
hi def link txtBlockDefStart Comment
hi def link txtBlockDefEnd Comment

syn match txtCodeDefStart "|=|.*[\{]$" containedin=txtTitle
syn match txtCodeDefEnd "[\}]|=|.*$"
hi def link txtCodeDefStart Comment
hi def link txtCodeDefEnd Comment

syn match txtBold "\*\*[^*]*\*\*"
hi txtBold term=bold cterm=bold gui=bold

syn match txtItalic "\/\/[^\/ ]*\/\/"
hi txtItalic term=italic cterm=italic gui=italic

syn match txtBacktick "`[^`]*`"
hi txtBacktick term=bold cterm=bold gui=bold

syn match txtStrikethrough "\~\~[^\~]*\~\~"
hi txtStrikethrough term=strikethrough cterm=strikethrough gui=strikethrough

syn match txtUnderline "__[^_]*__"
hi txtUnderline term=underline cterm=underline gui=underline

syn match txtDividers "---$"
hi def link txtDividers Comment

syn match txtBy "-@-"
hi def link txtBy Comment

syn match txtQuote "^\s*>"
hi def link txtQuote Comment

" syn match txtTouch "^\s*touch"
" hi txtTouch ctermbg=white ctermfg=black guibg=#ffffff guifg=#000000
