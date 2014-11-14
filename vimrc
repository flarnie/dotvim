" vim has 197 options you can set
" @see www.linuxjournal.com/article/3805

"""Prettification"""
" turn on line numbers
set number

" turn on the character delimiter at 80 characters.
set colorcolumn=80

"""Usability"""
" keep command line in center of screen.
set scrolloff=10

" Replace the beeping with a visual flash
set visualbell

" Always use spaces instead of tabs
set expandtab

"""Searching"""

" turn on incremental search, MEANING
" Vim will jump to the first match as you type.
:set incsearch

" tell search to ignore case for lower case search terms;
:set ignorecase
" BUT also do a case sensitive search when term has an upper cased letter;
:set smartcase

" Highlight matching search results
:set hlsearch

