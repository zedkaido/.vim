syn match txtComment "^\/\/.*$"
syn match txtCommentAlt "# .*$"
syn match codeDefStart "^|=|.*[\{]$"
syn match codeDefEnd "^[\}]|=|.*$"

hi def link txtComment Comment
hi def link txtCommentAlt Comment
hi def link codeDefStart Comment
hi def link codeDefEnd Comment
