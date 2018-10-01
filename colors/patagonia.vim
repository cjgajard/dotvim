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
let g:colors_name = "patagonia"

" HELPERS
" -------
let s:fg = ' ctermfg='
let s:bg = ' ctermbg='
let s:st = ' cterm='
let s:no = 'none'
"theme
let s:do = 145 "snow
let s:re = 68 "blue
let s:mi = 140 "purple
let s:fa = 117 "lightblue
let s:sol = 85 "teal
let s:la = 221 "orange
let s:si = 186 "green-yellow
"gray
let s:g4 = 244
let s:g3 = 240
let s:g2 = 236
let s:g1 = 234
let s:b = 16
let s:w = 231
"ui
let s:uif = 231
let s:uib = 66
let s:uin = 233
"special
let s:hl = 190 "yellow
let s:mp = 46 "green

" Highlight
" ---------
exe "hi Normal"       .s:fg.s:si  .s:bg.s:no  .s:st.s:no
exe "hi ColorColumn"  .s:fg.s:no  .s:bg.s:b   .s:st.s:no
exe "hi Comment"      .s:fg.s:g4  .s:bg.s:no  .s:st.s:no
exe "hi CursorColumn" .s:fg.s:g4  .s:bg.s:no  .s:st.s:no
exe "hi CursorLine"   .s:fg.s:no  .s:bg.s:no  .s:st.'bold'
exe "hi CursorLineNr" .s:fg.s:no  .s:bg.s:no  .s:st.s:no
exe "hi VertSplit"    .s:fg.s:uin .s:bg.s:uib .s:st.s:no
exe "hi NonText"      .s:fg.s:g2  .s:bg.s:no  .s:st.s:no
exe "hi SignColumn"   .s:fg.s:b   .s:bg.s:uib .s:st.s:no
exe "hi LineNr"       .s:fg.s:g2  .s:bg.s:no  .s:st.s:no
exe "hi SpecialKey"   .s:fg.s:g2  .s:bg.s:no  .s:st.s:no
exe "hi StatusLine"   .s:fg.s:uif .s:bg.s:uib .s:st.s:no
exe "hi StatusLineNC" .s:fg.s:uin .s:bg.s:uib .s:st.s:no
exe "hi Visual"       .s:fg.s:w   .s:bg.s:re  .s:st.s:no
exe "hi Search"       .s:fg.s:hl  .s:bg.s:no  .s:st.'underline'
exe "hi MatchParen"   .s:fg.s:mp  .s:bg.s:no  .s:st.'bold'
"exe hi TabLine
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
exe "hi PreProc"      .s:fg.s:fa  .s:bg.s:no  .s:st.s:no
exe "hi Special"      .s:fg.s:sol .s:bg.s:no  .s:st.s:no
exe "hi Statement"    .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi StorageClass" .s:fg.s:mi  .s:bg.s:no  .s:st.s:no
exe "hi String"       .s:fg.s:fa  .s:bg.s:no  .s:st.s:no
exe "hi Type"         .s:fg.s:sol .s:bg.s:no  .s:st.s:no

"js
exe "hi jsClassDefinition" .s:fg.s:la  .s:bg.s:no  .s:st.'bold,underline'
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
