"""Ctrl P"""
" https://github.com/kien/ctrlp.vim
let g:ctrlp_map = '<space>'
let g:ctrlp_working_path_mode = 'r'
" Exclude files and directories using Vim's wildignore and CtrlP's own
" g:ctrlp_custom_ignore:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
