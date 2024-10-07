" Name:         SUCKLESS DARK
" Description:  NO COLORS | NO SYNTAX-HIGHLIGHTING | 100% READABILITY
" Author:       Zed Kaido
" Maintainer:   Zed Kaido
" Website:      https://github.com/zedkaido/suckless-colors
" License:      MFL LICENSE
" Last Change:  2024 Oct 07

" Generated by Colortemplate v2.2.3

set background=dark

hi clear
let g:colors_name = 'suckless-dark'

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)
let s:italics = has('gui_running') || (&t_ZH != '' && &t_ZH != '[7m' && !has('win32'))

hi! link Added diffAdded
hi! link Boolean Constant
hi! link Character Constant
hi! link Changed diffChanged
hi! link Conditional Statement
hi! link CurSearch IncSearch
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Debug Special
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link Macro PreProc
hi! link MessageWindow WarningMsg
hi! link Number Constant
hi! link Operator Statement
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuMatch Pmenu
hi! link PmenuMatchSel PmenuSel
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link Removed diffRemoved
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTermNC StatusLineNC
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link debugBreakpoint SignColumn
hi! link debugPC SignColumn
hi! link lCursor Cursor

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#870000', '#87ff00', '#ffd700', '#0000ff', '#ff0087', '#00ffd7', '#eeeeee', '#000000', '#870000', '#87ff00', '#ffd700', '#0000ff', '#ff0087', '#00ffd7', '#eeeeee']
endif
hi Normal guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Terminal guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi ColorColumn guifg=#eeeeee guibg=#262626 gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor guifg=#000000 guibg=#eeeeee gui=NONE cterm=NONE
hi CursorColumn guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi CursorLine guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi CursorLineNr guifg=#eeeeee guibg=#0000ff gui=NONE cterm=NONE
hi LineNr guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Added guifg=#000000 guibg=#bcbcbc gui=bold cterm=bold
hi Changed guifg=#eeeeee guibg=#262626 gui=bold cterm=bold
hi Removed guifg=#eeeeee guibg=#870000 gui=NONE cterm=NONE
hi DiffAdd guifg=#000000 guibg=#bcbcbc gui=bold cterm=bold
hi DiffChange guifg=#eeeeee guibg=#262626 gui=NONE cterm=NONE
hi DiffDelete guifg=#eeeeee guibg=#870000 gui=NONE cterm=NONE
hi DiffText guifg=#eeeeee guibg=#262626 gui=bold cterm=bold
hi Directory guifg=#eeeeee guibg=#000000 gui=bold cterm=bold
hi EndOfBuffer guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi ErrorMsg guifg=#eeeeee guibg=#ff0000 gui=NONE cterm=NONE
hi FoldColumn guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Folded guifg=#eeeeee guibg=#262626 gui=italic cterm=italic
hi MatchParen guifg=#eeeeee guibg=#262626 gui=NONE cterm=NONE
hi ModeMsg guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi MoreMsg guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi NonText guifg=#ff0087 guibg=#000000 gui=NONE cterm=NONE
hi Pmenu guifg=#eeeeee guibg=#0000ff gui=NONE cterm=NONE
hi PmenuSbar guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi PmenuSel guifg=#eeeeee guibg=#000000 gui=reverse cterm=reverse
hi PmenuThumb guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Question guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Search guifg=#000000 guibg=#ffd700 gui=NONE cterm=NONE
hi IncSearch guifg=#eeeeee guibg=#0000ff gui=NONE cterm=NONE
hi SignColumn guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi SpecialKey guifg=#ff0087 guibg=#000000 gui=NONE cterm=NONE
hi SpellBad guifg=#eeeeee guibg=#000000 guisp=#870000 gui=undercurl cterm=underline
hi SpellCap guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi SpellLocal guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi SpellRare guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi StatusLine guifg=#eeeeee guibg=#000000 gui=bold cterm=bold
hi StatusLineNC guifg=#949494 guibg=#000000 gui=NONE cterm=NONE
hi StatusLineTerm guifg=#eeeeee guibg=#0000ff gui=bold cterm=bold
hi TabLine guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi TabLineSel guifg=#eeeeee guibg=#0000ff gui=bold cterm=bold
hi TabLineFill guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Title guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi VertSplit guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi Visual guifg=#eeeeee guibg=#000000 gui=reverse cterm=reverse
hi VisualNOS guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi WarningMsg guifg=#eeeeee guibg=#000000 gui=NONE cterm=NONE
hi WildMenu guifg=#eeeeee guibg=#0000ff gui=bold cterm=bold
hi Comment guifg=#949494 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#eeeeee guibg=#ff0000 gui=NONE cterm=NONE
hi Identifier guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#000000 guibg=#00ffd7 gui=NONE cterm=NONE
hi Type guifg=#eeeeee guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#eeeeee guibg=NONE gui=underline cterm=underline
hi CursorIM guifg=NONE guibg=fg gui=NONE cterm=NONE
hi ToolbarLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi ToolbarButton guifg=#eeeeee guibg=#000000 gui=bold cterm=bold
if !s:italics
  hi Folded gui=NONE cterm=NONE
endif

if s:t_Co >= 256
  hi Normal ctermfg=255 ctermbg=16 cterm=NONE
  hi Terminal ctermfg=255 ctermbg=16 cterm=NONE
  hi ColorColumn ctermfg=255 ctermbg=235 cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=16 ctermbg=255 cterm=NONE
  hi CursorColumn ctermfg=255 ctermbg=16 cterm=NONE
  hi CursorLine ctermfg=255 ctermbg=16 cterm=NONE
  hi CursorLineNr ctermfg=255 ctermbg=21 cterm=NONE
  hi LineNr ctermfg=255 ctermbg=16 cterm=NONE
  hi Added ctermfg=16 ctermbg=250 cterm=bold
  hi Changed ctermfg=255 ctermbg=235 cterm=bold
  hi Removed ctermfg=255 ctermbg=88 cterm=NONE
  hi DiffAdd ctermfg=16 ctermbg=250 cterm=bold
  hi DiffChange ctermfg=255 ctermbg=235 cterm=NONE
  hi DiffDelete ctermfg=255 ctermbg=88 cterm=NONE
  hi DiffText ctermfg=255 ctermbg=235 cterm=bold
  hi Directory ctermfg=255 ctermbg=16 cterm=bold
  hi EndOfBuffer ctermfg=255 ctermbg=16 cterm=NONE
  hi ErrorMsg ctermfg=255 ctermbg=196 cterm=NONE
  hi FoldColumn ctermfg=255 ctermbg=16 cterm=NONE
  hi Folded ctermfg=255 ctermbg=235 cterm=italic
  hi MatchParen ctermfg=255 ctermbg=235 cterm=NONE
  hi ModeMsg ctermfg=255 ctermbg=16 cterm=NONE
  hi MoreMsg ctermfg=255 ctermbg=16 cterm=NONE
  hi NonText ctermfg=198 ctermbg=16 cterm=NONE
  hi Pmenu ctermfg=255 ctermbg=21 cterm=NONE
  hi PmenuSbar ctermfg=255 ctermbg=16 cterm=NONE
  hi PmenuSel ctermfg=255 ctermbg=16 cterm=reverse
  hi PmenuThumb ctermfg=255 ctermbg=16 cterm=NONE
  hi Question ctermfg=255 ctermbg=16 cterm=NONE
  hi Search ctermfg=16 ctermbg=220 cterm=NONE
  hi IncSearch ctermfg=255 ctermbg=21 cterm=NONE
  hi SignColumn ctermfg=255 ctermbg=16 cterm=NONE
  hi SpecialKey ctermfg=198 ctermbg=16 cterm=NONE
  hi SpellBad ctermfg=255 ctermbg=16 cterm=underline
  hi SpellCap ctermfg=255 ctermbg=16 cterm=NONE
  hi SpellLocal ctermfg=255 ctermbg=16 cterm=NONE
  hi SpellRare ctermfg=255 ctermbg=16 cterm=NONE
  hi StatusLine ctermfg=255 ctermbg=16 cterm=bold
  hi StatusLineNC ctermfg=246 ctermbg=16 cterm=NONE
  hi StatusLineTerm ctermfg=255 ctermbg=21 cterm=bold
  hi TabLine ctermfg=255 ctermbg=16 cterm=NONE
  hi TabLineSel ctermfg=255 ctermbg=21 cterm=bold
  hi TabLineFill ctermfg=255 ctermbg=16 cterm=NONE
  hi Title ctermfg=255 ctermbg=16 cterm=NONE
  hi VertSplit ctermfg=255 ctermbg=16 cterm=NONE
  hi Visual ctermfg=255 ctermbg=16 cterm=reverse
  hi VisualNOS ctermfg=255 ctermbg=16 cterm=NONE
  hi WarningMsg ctermfg=255 ctermbg=16 cterm=NONE
  hi WildMenu ctermfg=255 ctermbg=21 cterm=bold
  hi Comment ctermfg=246 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=255 ctermbg=NONE cterm=NONE
  hi Error ctermfg=255 ctermbg=196 cterm=NONE
  hi Identifier ctermfg=255 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=255 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=255 ctermbg=NONE cterm=NONE
  hi Special ctermfg=255 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=255 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=16 ctermbg=50 cterm=NONE
  hi Type ctermfg=255 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=255 ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=16 cterm=NONE
  hi ToolbarButton ctermfg=255 ctermbg=16 cterm=bold
  if !s:italics
    hi Folded cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=White ctermbg=Black cterm=NONE
  hi Terminal ctermfg=White ctermbg=Black cterm=NONE
  hi ColorColumn ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=Black ctermbg=White cterm=NONE
  hi CursorColumn ctermfg=White ctermbg=Black cterm=NONE
  hi CursorLine ctermfg=White ctermbg=Black cterm=NONE
  hi CursorLineNr ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi LineNr ctermfg=White ctermbg=Black cterm=NONE
  hi Added ctermfg=Black ctermbg=LightGrey cterm=bold
  hi Changed ctermfg=White ctermbg=DarkGrey cterm=bold
  hi Removed ctermfg=White ctermbg=DarkRed cterm=NONE
  hi DiffAdd ctermfg=Black ctermbg=LightGrey cterm=bold
  hi DiffChange ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi DiffDelete ctermfg=White ctermbg=DarkRed cterm=NONE
  hi DiffText ctermfg=White ctermbg=DarkGrey cterm=bold
  hi Directory ctermfg=White ctermbg=Black cterm=bold
  hi EndOfBuffer ctermfg=White ctermbg=Black cterm=NONE
  hi ErrorMsg ctermfg=White ctermbg=DarkRed cterm=NONE
  hi FoldColumn ctermfg=White ctermbg=Black cterm=NONE
  hi Folded ctermfg=White ctermbg=DarkGrey cterm=italic
  hi MatchParen ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi ModeMsg ctermfg=White ctermbg=Black cterm=NONE
  hi MoreMsg ctermfg=White ctermbg=Black cterm=NONE
  hi NonText ctermfg=DarkMagenta ctermbg=Black cterm=NONE
  hi Pmenu ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi PmenuSbar ctermfg=White ctermbg=Black cterm=NONE
  hi PmenuSel ctermfg=White ctermbg=Black cterm=reverse
  hi PmenuThumb ctermfg=White ctermbg=Black cterm=NONE
  hi Question ctermfg=White ctermbg=Black cterm=NONE
  hi Search ctermfg=Black ctermbg=DarkYellow cterm=NONE
  hi IncSearch ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi SignColumn ctermfg=White ctermbg=Black cterm=NONE
  hi SpecialKey ctermfg=DarkMagenta ctermbg=Black cterm=NONE
  hi SpellBad ctermfg=White ctermbg=Black cterm=underline
  hi SpellCap ctermfg=White ctermbg=Black cterm=NONE
  hi SpellLocal ctermfg=White ctermbg=Black cterm=NONE
  hi SpellRare ctermfg=White ctermbg=Black cterm=NONE
  hi StatusLine ctermfg=White ctermbg=Black cterm=bold
  hi StatusLineNC ctermfg=Grey ctermbg=Black cterm=NONE
  hi StatusLineTerm ctermfg=White ctermbg=DarkBlue cterm=bold
  hi TabLine ctermfg=White ctermbg=Black cterm=NONE
  hi TabLineSel ctermfg=White ctermbg=DarkBlue cterm=bold
  hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
  hi Title ctermfg=White ctermbg=Black cterm=NONE
  hi VertSplit ctermfg=White ctermbg=Black cterm=NONE
  hi Visual ctermfg=White ctermbg=Black cterm=reverse
  hi VisualNOS ctermfg=White ctermbg=Black cterm=NONE
  hi WarningMsg ctermfg=White ctermbg=Black cterm=NONE
  hi WildMenu ctermfg=White ctermbg=DarkBlue cterm=bold
  hi Comment ctermfg=Grey ctermbg=NONE cterm=NONE
  hi Constant ctermfg=White ctermbg=NONE cterm=NONE
  hi Error ctermfg=White ctermbg=DarkRed cterm=NONE
  hi Identifier ctermfg=White ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=White ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=White ctermbg=NONE cterm=NONE
  hi Special ctermfg=White ctermbg=NONE cterm=NONE
  hi Statement ctermfg=White ctermbg=NONE cterm=NONE
  hi Todo ctermfg=Black ctermbg=DarkCyan cterm=NONE
  hi Type ctermfg=White ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=White ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=Black cterm=NONE
  hi ToolbarButton ctermfg=White ctermbg=Black cterm=bold
  if !s:italics
    hi Folded cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=White ctermbg=Black cterm=NONE
  hi Terminal ctermfg=White ctermbg=Black cterm=NONE
  hi ColorColumn ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=Black ctermbg=White cterm=NONE
  hi CursorColumn ctermfg=White ctermbg=Black cterm=NONE
  hi CursorLine ctermfg=White ctermbg=Black cterm=NONE
  hi CursorLineNr ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi LineNr ctermfg=White ctermbg=Black cterm=NONE
  hi Added ctermfg=Black ctermbg=LightGrey cterm=bold
  hi Changed ctermfg=White ctermbg=DarkGrey cterm=bold
  hi Removed ctermfg=White ctermbg=DarkRed cterm=NONE
  hi DiffAdd ctermfg=Black ctermbg=LightGrey cterm=bold
  hi DiffChange ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi DiffDelete ctermfg=White ctermbg=DarkRed cterm=NONE
  hi DiffText ctermfg=White ctermbg=DarkGrey cterm=bold
  hi Directory ctermfg=White ctermbg=Black cterm=bold
  hi EndOfBuffer ctermfg=White ctermbg=Black cterm=NONE
  hi ErrorMsg ctermfg=White ctermbg=DarkRed cterm=NONE
  hi FoldColumn ctermfg=White ctermbg=Black cterm=NONE
  hi Folded ctermfg=White ctermbg=DarkGrey cterm=italic
  hi MatchParen ctermfg=White ctermbg=DarkGrey cterm=NONE
  hi ModeMsg ctermfg=White ctermbg=Black cterm=NONE
  hi MoreMsg ctermfg=White ctermbg=Black cterm=NONE
  hi NonText ctermfg=DarkMagenta ctermbg=Black cterm=NONE
  hi Pmenu ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi PmenuSbar ctermfg=White ctermbg=Black cterm=NONE
  hi PmenuSel ctermfg=White ctermbg=Black cterm=reverse
  hi PmenuThumb ctermfg=White ctermbg=Black cterm=NONE
  hi Question ctermfg=White ctermbg=Black cterm=NONE
  hi Search ctermfg=Black ctermbg=DarkYellow cterm=NONE
  hi IncSearch ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi SignColumn ctermfg=White ctermbg=Black cterm=NONE
  hi SpecialKey ctermfg=DarkMagenta ctermbg=Black cterm=NONE
  hi SpellBad ctermfg=White ctermbg=Black cterm=underline
  hi SpellCap ctermfg=White ctermbg=Black cterm=NONE
  hi SpellLocal ctermfg=White ctermbg=Black cterm=NONE
  hi SpellRare ctermfg=White ctermbg=Black cterm=NONE
  hi StatusLine ctermfg=White ctermbg=Black cterm=bold
  hi StatusLineNC ctermfg=Grey ctermbg=Black cterm=NONE
  hi StatusLineTerm ctermfg=White ctermbg=DarkBlue cterm=bold
  hi TabLine ctermfg=White ctermbg=Black cterm=NONE
  hi TabLineSel ctermfg=White ctermbg=DarkBlue cterm=bold
  hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
  hi Title ctermfg=White ctermbg=Black cterm=NONE
  hi VertSplit ctermfg=White ctermbg=Black cterm=NONE
  hi Visual ctermfg=White ctermbg=Black cterm=reverse
  hi VisualNOS ctermfg=White ctermbg=Black cterm=NONE
  hi WarningMsg ctermfg=White ctermbg=Black cterm=NONE
  hi WildMenu ctermfg=White ctermbg=DarkBlue cterm=bold
  hi Comment ctermfg=Grey ctermbg=NONE cterm=NONE
  hi Constant ctermfg=White ctermbg=NONE cterm=NONE
  hi Error ctermfg=White ctermbg=DarkRed cterm=NONE
  hi Identifier ctermfg=White ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=White ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=White ctermbg=NONE cterm=NONE
  hi Special ctermfg=White ctermbg=NONE cterm=NONE
  hi Statement ctermfg=White ctermbg=NONE cterm=NONE
  hi Todo ctermfg=Black ctermbg=DarkCyan cterm=NONE
  hi Type ctermfg=White ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=White ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=Black cterm=NONE
  hi ToolbarButton ctermfg=White ctermbg=Black cterm=bold
  if !s:italics
    hi Folded cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CursorColumn term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: black         rgb(  0,   0,   0)      16          Black
" Color: white         rgb(238, 238, 238)      255         White
" Color: light_grey    rgb(188, 188, 188)      250         LightGrey
" Color: grey          rgb(148, 148, 148)      246         Grey
" Color: dark_grey     rgb( 38,  38,  38)      235         DarkGrey
" Color: red           rgb(135,   0,   0)      88          DarkRed
" Color: green         rgb(135, 255,   0)      118         DarkGreen
" Color: yellow        rgb(255, 215,   0)      220         DarkYellow
" Color: blue          rgb(  0,   0, 255)      21          DarkBlue
" Color: magenta       rgb(255,   0, 135)      198         DarkMagenta
" Color: cyan          rgb(  0, 255, 215)      50          DarkCyan
" Color: error         rgb(255,   0,   0)      196         DarkRed
" Term colors: black red green yellow blue magenta cyan white
" Term colors: black red green yellow blue magenta cyan white
" vim: et ts=8 sw=2 sts=2
