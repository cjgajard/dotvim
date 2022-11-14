if exists('*linksave#find')
  call linksave#find()
endif
let s:cpo_save = &cpo
let s:t_Co_save = &t_Co
set cpo&vim
set t_Co=16

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mono"

let s:hi = 'Red'
let s:lo = 'DarkRed'
if exists('colors_fg') && colors_fg >= 0 && colors_fg < 8
  let s:lo = colors_fg
  let s:hi = s:lo + 8
endif

hi Normal       ctermfg=none     ctermbg=none     cterm=none
hi Comment      ctermfg=DarkGray ctermbg=none     cterm=none
hi ColorColumn  ctermfg=DarkGray ctermbg=Black    cterm=reverse
hi Error        ctermfg=DarkRed  ctermbg=White    cterm=reverse
hi Search       ctermfg=White    ctermbg=none     cterm=reverse
hi StatusLine   ctermfg=none     ctermbg=none     cterm=reverse
hi StatusLineNC ctermfg=none     ctermbg=none     cterm=none
exe 'hi Visual  ctermfg=White       ctermbg='.s:lo.' cterm=none'

exe 'hi Statement ctermfg='.s:hi.' ctermbg=none cterm=none'
hi Type           ctermfg=gray     ctermbg=none cterm=none
exe 'hi Constant  ctermfg='.s:lo.' ctermbg=none cterm=none'

hi! link Delimiter    Normal
hi! link LineNr       Comment
hi! link LineNrAbove  LineNr
hi! link LineNrBelow  LineNr
hi! link CursorLineNr Normal

hi! link SpecialKey   Comment
hi! link SignColumn   Comment
hi! link Folded       Comment
hi! link Identifier   Constant
hi! link SpellBad     Error
hi! link SpellCap     Error
hi! link WarningMsg   Error
hi! link Todo         Special
hi! link MatchParen   Statement
hi! link StorageClass Statement
hi! link Title        Statement
hi! link Special      Type
hi! link Label        Type
hi! link PreProc      Type

hi! link TabLine      StatusLineNC
hi! link TabLineFill  StatusLineNC
hi! link TabLineSel   StatusLine
hi! link VertSplit    StatuslineNC

let &cpo = s:cpo_save
let &t_Co = s:t_Co_save
if exists('*linksave#restore')
    call linksave#restore()
endif
unlet s:cpo_save
unlet s:t_Co_save
