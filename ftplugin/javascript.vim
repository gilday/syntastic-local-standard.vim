let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')
let s:standard_path = system('PATH=$(npm bin):$PATH && which standard')
exec "lcd" s:lcd
let b:syntastic_javascript_standard_exec = substitute(s:standard_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
