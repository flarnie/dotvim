" vim has 197 options you can set
" @see www.linuxjournal.com/article/3805

" Don't support VI - saves us from running into unexpected configuration.
set nocompatible

" pathogen has to be set up before we enable filetype recognition
call pathogen#infect()
call pathogen#helptags()

" Tell Vim to read per-filetype settings from 'ftplugin' and 'indent' dir.s
if has("autocmd")
  filetype plugin indent on
endif

"""Random Fun"""
command! Status echo "All systems are go!"

" For other settings, see:
"  - plugin/usability.vim
"  - plugin/readability.vim
"  - plugin/search-settings.vim

set background=dark
