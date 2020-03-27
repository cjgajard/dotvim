" Vim color file - Patagonia
" Maintainer: Carlos Gajardo <cjgajard@gmail.com>
" Last Change: 2018 August 01

" SETUP
" -----
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "patagonia-16"

" HELPERS
" -------
let s:fg = ' ctermfg='
let s:bg = ' ctermbg='
let s:st = ' cterm='
let s:no = 'none'

"theme
let s:do = 14
let s:re = 4
let s:mi = 5
let s:fa = 12
let s:sol = 6
let s:la = 3
let s:si = 11
let s:str = 10
"let s:unassigned00 = 9
"let s:unassigned01 = 13

"gray
let s:g2 = 7
let s:g1 = 8
"ui
let s:uih = 15 "ui foreground highlight
let s:uif = s:g2 "ui foreground normal
let s:uib = s:no "ui background
"special
let s:vf = 7 "visual foreground
let s:vb = s:re "visual background
let s:err = 1 "red
let s:wrn = 3 "yellow
let s:mp = 2 "green
let s:z0 = 0

"ui
exe "hi Normal"       .s:fg.s:si  .s:bg.s:no  .s:st.s:no
exe "hi ColorColumn"  .s:fg.s:err .s:bg.s:no  .s:st.s:no
exe "hi Comment"      .s:fg.s:g2  .s:bg.s:no  .s:st.s:no
exe "hi CursorColumn" .s:fg.s:no  .s:bg.s:z0  .s:st.s:no
exe "hi CursorLine"   .s:fg.s:no  .s:bg.s:z0  .s:st.s:no
exe "hi CursorLineNr" .s:fg.s:no  .s:bg.s:no  .s:st.'bold'
exe "hi Error"        .s:fg.s:err .s:bg.s:no  .s:st.'reverse'
exe "hi Folded"       .s:fg.s:g1  .s:bg.s:no  .s:st.s:no
exe "hi FoldColumn"   .s:fg.s:g1  .s:bg.s:no  .s:st.s:no
exe "hi LineNr"       .s:fg.s:g1  .s:bg.s:no  .s:st.s:no
exe "hi MatchParen"   .s:fg.s:mp  .s:bg.s:no  .s:st.'bold'
exe "hi NonText"      .s:fg.s:g1  .s:bg.s:no  .s:st.s:no
exe "hi Search"       .s:fg.s:no  .s:bg.s:no  .s:st.'bold,underline'
exe "hi SignColumn"   .s:fg.s:no  .s:bg.s:no  .s:st.s:no
exe "hi Special"      .s:fg.s:do  .s:bg.s:no  .s:st.s:no
exe "hi SpecialChar"  .s:fg.s:la  .s:bg.s:no  .s:st.s:no
exe "hi SpecialKey"   .s:fg.s:g1  .s:bg.s:no  .s:st.s:no
exe "hi SpellBad"     .s:fg.s:err .s:bg.s:no  .s:st.'bold'
exe "hi SpellCap"     .s:fg.s:err .s:bg.s:no  .s:st.'bold'
exe "hi StatusLine"   .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi StatusLineNC" .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi TabLine"      .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi TabLineFill"  .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi TabLineSel"   .s:fg.s:uih .s:bg.s:no  .s:st.s:no
exe "hi Title"        .s:fg.s:no  .s:bg.s:no  .s:st.s:no
exe "hi Todo"         .s:fg.s:wrn .s:bg.s:no  .s:st.'reverse'
exe "hi VertSplit"    .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi Visual"       .s:fg.s:vf  .s:bg.s:vb  .s:st.s:no
"exe hi Question
"exe hi ModeMsg
"exe hi MoreMsg
"exe hi ErrorMsg
"exe hi WarningMsg

"syntax
exe "hi Character"    .s:fg.s:fa  .s:bg.s:no  .s:st.s:no
exe "hi Constant"     .s:fg.s:la  .s:bg.s:no  .s:st.s:no
exe "hi Function"     .s:fg.s:re  .s:bg.s:no  .s:st.s:no
exe "hi Identifier"   .s:fg.s:la  .s:bg.s:no  .s:st.s:no
exe "hi Include"      .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi Operator"     .s:fg.s:sol .s:bg.s:no  .s:st.s:no
exe "hi Macro"        .s:fg.s:do  .s:bg.s:no  .s:st.s:no
exe "hi PreProc"      .s:fg.s:fa  .s:bg.s:no  .s:st.s:no
exe "hi Statement"    .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi StorageClass" .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi String"       .s:fg.s:str .s:bg.s:no  .s:st.s:no
exe "hi Type"         .s:fg.s:sol .s:bg.s:no  .s:st.s:no

"js
exe "hi jsClassDefinition" .s:fg.s:la  .s:bg.s:no  .s:st.'bold'
exe "hi jsFuncName"        .s:fg.s:re  .s:bg.s:no  .s:st.s:no
exe "hi jsFuncCall"        .s:fg.s:re  .s:bg.s:no  .s:st.s:no
exe "hi jsModuleKeyword"   .s:fg.s:sol .s:bg.s:no  .s:st.s:no
exe "hi jsObjectProp"      .s:fg.s:sol .s:bg.s:no  .s:st.s:no
exe "hi jsThis"            .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi jsVariableDef"     .s:fg.s:la  .s:bg.s:no  .s:st.s:no

"python
exe "hi pythonFunction"  .s:fg.s:re  .s:bg.s:no  .s:st.s:no
exe "hi pythonBuiltin"   .s:fg.s:do  .s:bg.s:no  .s:st.s:no
exe "hi pythonAttribute" .s:fg.s:sol .s:bg.s:no  .s:st.s:no