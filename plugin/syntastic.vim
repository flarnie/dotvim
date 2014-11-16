" Always add any detected errors into the location list
let g:syntastic_always_populate_loc_list = 1

" Highlight syntax errors when possible
let g:syntastic_enable_highlighting = 1

" Don't run checkers when saving and quitting -- only on saving
let g:syntastic_check_on_wq = 0

" Symbols to show for errors
let g:syntastic_error_symbol         = '✗'
let g:syntastic_warning_symbol       = '⚠'
let g:syntastic_style_error_symbol   = '⚠'
let g:syntastic_style_warning_symbol = '⚠'

" Syntax checkers
let g:syntastic_scss_checkers = ['scss_lint']

let g:syntastic_javascript_checkers  = ['jsxhint', 'jscs']
let g:syntastic_javascript_jscs_exec = 'jsxcs'
