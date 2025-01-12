let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dg-fem-homework
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/dg-fem-homework
badd +6 LAUNCH.sh
badd +25 .gitignore
badd +62 main.tex
badd +9 term://~/dg-fem-homework//3264:/bin/bash
badd +20 term://~/dg-fem-homework//4667:/bin/bash
badd +1 fugitive:///home/elian/dg-fem-homework/.git//
badd +0 term://~/dg-fem-homework//36739:/bin/bash
argglobal
%argdel
$argadd ~/dg-fem-homework
edit fugitive:///home/elian/dg-fem-homework/.git//
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 25 + 26) / 53)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 98 + 98) / 196)
exe '3resize ' . ((&lines * 8 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 97 + 98) / 196)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 97 + 98) / 196)
argglobal
balt ~/dg-fem-homework
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/dg-fem-homework
wincmd w
argglobal
if bufexists(fnamemodify("~/dg-fem-homework/main.tex", ":p")) | buffer ~/dg-fem-homework/main.tex | else | edit ~/dg-fem-homework/main.tex | endif
if &buftype ==# 'terminal'
  silent file ~/dg-fem-homework/main.tex
endif
balt ~/dg-fem-homework
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((9 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 030|
lcd ~/dg-fem-homework
wincmd w
argglobal
if bufexists(fnamemodify("~/dg-fem-homework/LAUNCH.sh", ":p")) | buffer ~/dg-fem-homework/LAUNCH.sh | else | edit ~/dg-fem-homework/LAUNCH.sh | endif
if &buftype ==# 'terminal'
  silent file ~/dg-fem-homework/LAUNCH.sh
endif
balt ~/dg-fem-homework/main.tex
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10 - ((1 * winheight(0) + 4) / 8)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0104|
lcd ~/dg-fem-homework
wincmd w
argglobal
if bufexists(fnamemodify("term://~/dg-fem-homework//36739:/bin/bash", ":p")) | buffer term://~/dg-fem-homework//36739:/bin/bash | else | edit term://~/dg-fem-homework//36739:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/dg-fem-homework//36739:/bin/bash
endif
balt term://~/dg-fem-homework//4667:/bin/bash
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3552 - ((15 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3552
normal! 0
lcd ~/dg-fem-homework
wincmd w
exe '1resize ' . ((&lines * 25 + 26) / 53)
exe '2resize ' . ((&lines * 25 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 98 + 98) / 196)
exe '3resize ' . ((&lines * 8 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 97 + 98) / 196)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 97 + 98) / 196)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
