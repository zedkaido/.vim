syn match txtBold "\*\*[^*]*\*\*" containedin=gitcommitSummary
hi txtBold term=bold cterm=bold gui=bold

syn match txtBacktick "`[^`]*`" containedin=gitcommitSummary
hi txtBacktick term=bold cterm=bold gui=bold
