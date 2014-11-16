" Miami theme for colors
" https://github.com/rf-/vimfiles/blob/master/colors/miami.vim
function! DarkTheme()
  set background=dark
  color miami
endfunction

function! LightTheme()
  set background=light
  color miami
endfunction

call DarkTheme()
