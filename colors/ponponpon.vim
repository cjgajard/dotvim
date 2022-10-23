" Vim color file - Ponponpon
" Maintainer: Carlos Gajardo <cjgajard@gmail.com>

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "ponponpon"

" VARIABLES
" ---------
let s:no = 'NONE'
let s:empty = {'gui':s:no, 'xterm':s:no, 'term':s:no}
let s:re = 'reverse'
let s:bo = 'bold'

" COLORS
" -----
let s:x0 = {'gui':'#000000', 'xterm': 16, 'term':'Black'}
let s:x1 = {'gui':'#9a9a9a', 'xterm':247, 'term':'DarkGray'}
let s:x2 = {'gui':'#df4c70', 'xterm':203, 'term':'DarkMagenta'}
let s:x3 = {'gui':'#ffffff', 'xterm':231, 'term':'White'}

let s:x4 = {'gui':'#30305f', 'xterm': 17, 'term':'Black'}
let s:x5 = {'gui':'#9040ff', 'xterm': 99, 'term':'DarkMagenta'}
let s:x6 = {'gui':'#4040ff', 'xterm': 63, 'term':'DarkBlue'}
let s:x7 = {'gui':'#40a0ff', 'xterm': 75, 'term':'Blue'}

let s:x8 = {'gui':'#ff6242', 'xterm':  9, 'term':'Red'}
let s:x9 = {'gui':'#ff42ff', 'xterm':203, 'term':'Magenta'}
let s:xa = {'gui':'#ff5781', 'xterm':204, 'term':'Magenta'}
let s:xb = {'gui':'#ffebee', 'xterm':225, 'term':'White'}

let s:xc = {'gui':'#ffea80', 'xterm':228, 'term':'Yellow'}
"let s:xd
"let s:xe
"let s:xf

if &background ==# 'light'
" LIGHT THEME
" -----------
let s:a  = s:x7
let s:b  = s:x6
let s:c  = s:x8
let s:d  = s:x5
let s:e  = s:xc
let s:z  = s:x1
let s:nb = s:xb
let s:nf = s:x2
let s:sb = s:xc
let s:sf = s:x0
let s:vb = s:xc
let s:vf = 0
let s:ui = s:xa
else
" DARK THEME
" ----------
let s:a  = s:x9
let s:b  = s:x8
let s:c  = s:x7
let s:d  = s:x5
let s:e  = s:xc
let s:z  = s:x1
let s:nb = s:x4
let s:nf = s:x3
let s:sb = s:xc
let s:sf = s:x0
let s:vb = s:xc
let s:vf = s:x2
let s:ui = s:xa
endif

" SETUP
" -----
if &t_Co == 256
  let s:sys='xterm'
else
  let s:sys='term'
endif

function! <SID>h(group, fg, opts)
  exe "highlight " . a:group
  \ . ' guifg=' . (!empty(a:fg) ? a:fg.gui : s:no)
  \ . ' guibg=' . (has_key(a:opts, 'bg') ? a:opts.bg.gui : s:no)
  \ . ' guisp=' . (has_key(a:opts, 'sp') ? a:opts.sp.gui : s:no)
  \ . ' gui=' . (has_key(a:opts, 'attr') ? a:opts.attr : s:no)
  \ . ' ctermfg=' . (!empty(a:fg) ? a:fg[s:sys] : s:no)
  \ . ' ctermbg=' . (has_key(a:opts, 'bg') ? a:opts.bg[s:sys] : s:no)
  \ . ' cterm=' . (has_key(a:opts, 'attr') ? a:opts.attr : s:no)
endfun

" HIGHLIGHT
" ---------
call <SID>h('Normal', s:nf, {'bg':s:nb})
call <SID>h('Search', s:sf, {'bg':s:sb})

call <SID>h('Visual', s:vf, {'bg':s:vb})
hi! link ColorColumn Visual
hi! link CursorColumn Visual
hi! link CursorLine CursorColumn
hi! link CursorLineNr CursorLine

call <SID>h('FoldColumn', s:ui, {})
call <SID>h('StatusLineNC', s:nb, {'bg': s:ui})
hi! link StatusLine StatusLineNC
hi! link VertSplit StatusLineNC
"call <SID>h('StatusLine', s:nb, {'bg': s:vb})

call <SID>h('Comment', s:z, {})
hi! link LineNR Comment
hi! link SpecialKey Comment
hi! link htmlEndTag Comment
call <SID>h('Folded', s:nb, {'bg':s:z})

call <SID>h('Statement', s:a, {})

call <SID>h('Type', s:b, {})
hi! link Structure Type

call <SID>h('String', s:c, {})

call <SID>h('Constant', s:d, {})
hi! link Boolean Constant
hi! link Float Constant
hi! link Number Constant
hi! link Character Constant
hi! link Identifier Constant
hi! link SpecialChar Constant

" BACKGROUND
" ----------
if &background ==# 'light'
  hi! link PreProc Statement
  hi! link Special Statement
else
  call <SID>h('Storage', s:vb, {})
  hi! link StorageClass Storage
  hi! link PreProc Storage
  call <SID>h('Special', s:e, {})
  call <SID>h('MatchParen', s:vb, {})
endif
