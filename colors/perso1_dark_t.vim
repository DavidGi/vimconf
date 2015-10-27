" This scheme was created by CSApproxSnapshot
" on dim., 29 mars 2015

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=59 ctermfg=231 gui=NONE guibg=#2c2c34 guifg=#ffffff
    CSAHi cCppParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=103 gui=bold guibg=bg guifg=#607f94
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=italic guibg=bg guifg=#dbe0ff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=189 ctermfg=23 gui=NONE guibg=#dbe0ff guifg=#001b44
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#898c9f
    CSAHi NonText term=bold cterm=bold ctermbg=59 ctermfg=59 gui=bold guibg=#2c2c34 guifg=#394447
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=109 ctermfg=229 gui=reverse guibg=#f0e68c guifg=#708090
    CSAHi Search term=reverse cterm=NONE ctermbg=179 ctermfg=224 gui=NONE guibg=#cd853f guifg=#f5deb3
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ecf8f8
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#307375
    CSAHi cCppInIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppInElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=231 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=59 ctermfg=fg gui=underline guibg=#2c2c41 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#2c2c34 guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi cUserCont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBitField term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbersCom term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=189 ctermfg=59 gui=bold,reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=189 ctermfg=59 gui=reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=16 gui=reverse guibg=#0e090f guifg=#7f7f7f
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=174 gui=bold guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=189 ctermfg=54 gui=NONE guibg=#dbe0ff guifg=#2d0c70
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#fa8072
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi cCppInSkip term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cMulti term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBadBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=174 ctermfg=60 gui=NONE guibg=#b97375 guifg=#2d3070
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=59 gui=NONE guibg=#ffffff guifg=#2c2c34
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87b7ff
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#ffbbbb
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=#902c41
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#aab8c4
    CSAHi cBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbers term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=189 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=59 ctermfg=189 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=59 ctermfg=255 gui=NONE guibg=#2c2c34 guifg=#ffffff
    CSAHi cCppParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#607f94
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=italic guibg=bg guifg=#dbe0ff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=231 ctermfg=24 gui=NONE guibg=#dbe0ff guifg=#001b44
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#898c9f
    CSAHi NonText term=bold cterm=bold ctermbg=59 ctermfg=66 gui=bold guibg=#2c2c34 guifg=#394447
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=145 ctermfg=229 gui=reverse guibg=#f0e68c guifg=#708090
    CSAHi Search term=reverse cterm=NONE ctermbg=215 ctermfg=230 gui=NONE guibg=#cd853f guifg=#f5deb3
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=255 gui=bold guibg=bg guifg=#ecf8f8
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#307375
    CSAHi cCppInIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppInElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=201 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=255 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=60 ctermfg=fg gui=underline guibg=#2c2c41 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=59 gui=reverse guibg=#2c2c34 guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi cUserCont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBitField term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbersCom term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=49 gui=bold guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=231 ctermfg=60 gui=bold,reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=231 ctermfg=60 gui=reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=145 ctermfg=16 gui=reverse guibg=#0e090f guifg=#7f7f7f
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=210 gui=bold guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=231 ctermfg=55 gui=NONE guibg=#dbe0ff guifg=#2d0c70
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#fa8072
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi cCppInSkip term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cMulti term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBadBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=181 ctermfg=61 gui=NONE guibg=#b97375 guifg=#2d3070
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=59 gui=NONE guibg=#ffffff guifg=#2c2c34
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#87b7ff
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#ffbbbb
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=132 gui=NONE guibg=bg guifg=#902c41
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#aab8c4
    CSAHi cBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbers term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Folded term=NONE cterm=NONE ctermbg=60 ctermfg=231 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=60 ctermfg=231 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=236 ctermfg=231 gui=NONE guibg=#2c2c34 guifg=#ffffff
    CSAHi cCppParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#607f94
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=italic guibg=bg guifg=#dbe0ff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=241 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=189 ctermfg=17 gui=NONE guibg=#dbe0ff guifg=#001b44
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#898c9f
    CSAHi NonText term=bold cterm=bold ctermbg=236 ctermfg=59 gui=bold guibg=#2c2c34 guifg=#394447
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=66 ctermfg=222 gui=reverse guibg=#f0e68c guifg=#708090
    CSAHi Search term=reverse cterm=NONE ctermbg=173 ctermfg=223 gui=NONE guibg=#cd853f guifg=#f5deb3
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#ecf8f8
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#307375
    CSAHi cCppInIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppInElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=110 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=248 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=231 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=17 ctermfg=fg gui=underline guibg=#2c2c41 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=236 gui=reverse guibg=#2c2c34 guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi cUserCont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBitField term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbersCom term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=48 gui=bold guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=189 ctermfg=17 gui=bold,reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=189 ctermfg=17 gui=reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=244 ctermfg=16 gui=reverse guibg=#0e090f guifg=#7f7f7f
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=167 gui=bold guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=189 ctermfg=17 gui=NONE guibg=#dbe0ff guifg=#2d0c70
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=209 gui=NONE guibg=bg guifg=#fa8072
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi cCppInSkip term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cMulti term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBadBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=132 ctermfg=23 gui=NONE guibg=#b97375 guifg=#2d3070
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=236 gui=NONE guibg=#ffffff guifg=#2c2c34
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=30 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=111 gui=NONE guibg=bg guifg=#87b7ff
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=217 gui=NONE guibg=bg guifg=#ffbbbb
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=89 gui=NONE guibg=bg guifg=#902c41
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#aab8c4
    CSAHi cBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbers term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=189 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=17 ctermfg=189 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#2c2c34 guifg=#ffffff
    CSAHi cCppParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#607f94
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cd5c5c
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=59 gui=italic guibg=bg guifg=#dbe0ff
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#666666
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=59 ctermfg=16 gui=NONE guibg=#dbe0ff guifg=#001b44
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#898c9f
    CSAHi NonText term=bold cterm=bold ctermbg=80 ctermfg=17 gui=bold guibg=#2c2c34 guifg=#394447
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=#00ffff
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=37 ctermfg=73 gui=reverse guibg=#f0e68c guifg=#708090
    CSAHi Search term=reverse cterm=NONE ctermbg=52 ctermfg=74 gui=NONE guibg=#cd853f guifg=#f5deb3
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#ecf8f8
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#307375
    CSAHi cCppInIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppInElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cCppOutElse term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=67 ctermfg=fg gui=NONE guibg=#ff00ff guifg=fg
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=84 ctermfg=fg gui=NONE guibg=#a9a9a9 guifg=fg
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=79 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=80 ctermfg=fg gui=underline guibg=#2c2c41 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=80 gui=reverse guibg=#2c2c34 guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi cUserCont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBitField term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbersCom term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=#ffff00
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=#00ff7f
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=59 ctermfg=80 gui=bold,reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=59 ctermfg=80 gui=reverse guibg=#2c2c41 guifg=#dbe0ff
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=82 ctermfg=16 gui=reverse guibg=#0e090f guifg=#7f7f7f
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=53 gui=bold guibg=bg guifg=#cd5c5c
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=17 gui=NONE guibg=#dbe0ff guifg=#2d0c70
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=69 gui=NONE guibg=bg guifg=#fa8072
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#ffff00 guifg=#000000
    CSAHi cCppInSkip term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cMulti term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cBadBlock term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=53 ctermfg=17 gui=NONE guibg=#b97375 guifg=#2d3070
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=80 gui=NONE guibg=#ffffff guifg=#2c2c34
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=21 ctermfg=fg gui=NONE guibg=#008b8b guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#87b7ff
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#ffbbbb
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=#902c41
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#aab8c4
    CSAHi cBracket term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cNumbers term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticErrorLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SyntasticWarningLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Folded term=NONE cterm=NONE ctermbg=80 ctermfg=59 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=80 ctermfg=59 gui=NONE guibg=#2c2c41 guifg=#dbe0ff
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
endif

if 1
    delcommand CSAHi
endif
