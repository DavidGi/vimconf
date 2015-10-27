set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "perso1_dark"

hi Comment guifg=#87b7ff
hi Constant guifg=lightred
hi Cursor guifg=#2d3070 guibg=#B97375
hi CursorColumn guibg=gray40
hi CursorIM gui=None
hi CursorLine guibg=gray40
hi DiffAdd guibg=darkblue
hi DiffChange guibg=darkmagenta
hi DiffDelete gui=bold guifg=blue guibg=darkcyan
hi DiffText gui=bold guibg=red
hi Directory guifg=cyan
hi Error guifg=white guibg=red
hi ErrorMsg guifg=white guibg=red
hi FoldColumn guifg=#dbe0ff guibg=#2C2C41
hi Folded guifg=#dbE0FF guibg=#2C2C41
hi Identifier guifg=#aab8c4
hi Ignore guifg=gray40
hi IncSearch gui=reverse guifg=slategrey guibg=khaki
hi LineNr guifg=#307375
hi MatchParen guibg=darkcyan
hi ModeMsg gui=bold guifg=#ecf8f8
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=bold guifg=#394447 guibg=#2C2C34
hi Normal guifg=white guibg=#2C2C34
hi Pmenu guibg=magenta
hi PmenuSbar guibg=grey
hi PmenuSel guibg=darkgray
hi PmenuThumb gui=reverse
hi PreProc guifg=indianred
hi Question gui=bold guifg=springgreen
hi Search guifg=wheat guibg=peru
hi SignColumn guifg=cyan guibg=grey
hi Special guifg=#902c41
hi SpecialKey guifg=#898c9f
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=#607f94
hi StatusLine guifg=#dbe0ff guibg=#2c2c41
hi StatusLineNC guifg=#dbe0ff guibg=#2c2c41
hi TabLine gui=underline guibg=#2c2c41
hi TabLineFill gui=reverse guibg=#2C2C34
hi TabLineSel gui=bold
hi Title gui=bold guifg=indianred
hi Todo guifg=#001b44 guibg=#dbe0ff
hi Type gui=italic guifg=#dbe0ff
hi Underlined gui=underline guifg=#80a0ff
hi VertSplit guifg=gray50 guibg=#0E090F
hi Visual guifg=#2d0c70 guibg=#DBE0FF
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=salmon
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Function Identifier
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link String Constant
hi link Structure Type
hi link Tag Special
hi link Typedef Type


