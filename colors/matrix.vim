if exists('*linksave#find')    | call linksave#find()    | endif
hi clear
if exists('*linksave#restore') | call linksave#restore() | endif
if exists("syntax_on")         | syntax reset            | endif
let g:colors_name="matrix"

hi  Normal       ctermfg=none  ctermbg=none  cterm=none
hi  Visual       ctermfg=none  ctermbg=none  cterm=reverse
hi  Comment      ctermfg=8     ctermbg=none  cterm=none
hi  Error        ctermfg=9     ctermbg=none  cterm=reverse
hi  Search       ctermfg=15    ctermbg=8     cterm=none
hi  ColorColumn  ctermfg=none  ctermbg=0     cterm=none

hi!  link  CurSearch         Search
hi!  link  IncSearch         Search
hi!  link  MatchParen        Search
hi!  link  CursorLine        Visual
hi!  link  CursorLineNr      Visual
hi!  link  TabLineSel        Visual
hi!  link  LineNr            Comment
hi!  link  SpecialKey        Comment
hi!  link  StatusLine        Comment
hi!  link  StatusLineNC      Comment
hi!  link  TabLine           Comment
hi!  link  VertSplit         Comment
hi!  link  NonText           Comment
"hi!  link  ColorColumn       Comment

hi!  link  Boolean           Normal
hi!  link  Character         Normal
hi!  link  Conceal           Normal
hi!  link  Conditional       Normal
hi!  link  Constant          Normal
hi!  link  CursorColumn      Normal
hi!  link  CursorLineFold    Normal
hi!  link  CursorLineSign    Normal
hi!  link  Debug             Normal
hi!  link  Define            Normal
hi!  link  Delimiter         Normal
hi!  link  DiffAdd           Normal
hi!  link  DiffChange        Normal
hi!  link  DiffDelete        Normal
hi!  link  DiffText          Normal
hi!  link  Directory         Normal
hi!  link  EndOfBuffer       Normal
hi!  link  ErrorMsg          Normal
hi!  link  Exception         Normal
hi!  link  Float             Normal
hi!  link  FoldColumn        Normal
hi!  link  Folded            Normal
hi!  link  Function          Normal
hi!  link  Identifier        Normal
hi!  link  Ignore            Normal
hi!  link  Include           Normal
hi!  link  Keyword           Normal
hi!  link  Label             Normal
hi!  link  LineNrAbove       Normal
hi!  link  LineNrBelow       Normal
hi!  link  Macro             Normal
hi!  link  ModeMsg           Normal
hi!  link  MoreMsg           Normal
hi!  link  NonText           Normal
hi!  link  Normal            Normal
hi!  link  Number            Normal
hi!  link  Operator          Normal
hi!  link  Pmenu             Normal
hi!  link  PmenuSbar         Normal
hi!  link  PmenuSel          Normal
hi!  link  PmenuThumb        Normal
hi!  link  PreCondit         Normal
hi!  link  PreProc           Normal
hi!  link  Question          Normal
hi!  link  QuickFixLine      Normal
hi!  link  Repeat            Normal
hi!  link  SignColumn        Normal
hi!  link  Special           Normal
hi!  link  SpecialChar       Normal
hi!  link  SpecialComment    Normal
hi!  link  SpellBad          Normal
hi!  link  SpellCap          Normal
hi!  link  SpellLocal        Normal
hi!  link  SpellRare         Normal
hi!  link  Statement         Normal
hi!  link  StatusLineTerm    Normal
hi!  link  StatusLineTermNC  Normal
hi!  link  StorageClass      Normal
hi!  link  String            Normal
hi!  link  Structure         Normal
hi!  link  TabLineFill       Normal
hi!  link  Tag               Normal
hi!  link  Title             Normal
hi!  link  Todo              Normal
hi!  link  ToolbarButton     Normal
hi!  link  ToolbarLine       Normal
hi!  link  Type              Normal
hi!  link  Typedef           Normal
hi!  link  Underlined        Normal
hi!  link  VisualNOS         Normal
hi!  link  WarningMsg        Normal
hi!  link  WildMenu          Normal
