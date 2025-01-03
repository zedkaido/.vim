syntax keyword TODO TODO contained

syn match txtTODO "#TODO" contains=TODO
syn match txtComment "\/\/ .*$" contains=TODO
syn match txtCommentAlt "# .*$" contains=TODO
syn match codeDefStart "|=|.*[\{]$" contains=TODO
syn match codeDefEnd "[\}]|=|.*$" contains=TODO

hi def link txtTODO Comment
hi def link txtComment Comment 
hi def link txtCommentAlt Comment
hi def link codeDefStart Comment
hi def link codeDefEnd Comment
