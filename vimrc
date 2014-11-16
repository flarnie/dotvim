" vim has 197 options you can set
" @see www.linuxjournal.com/article/3805

"""Usability"""
" Don't support VI - saves us from running into unexpected configuration.
set nocompatible

" keep command line in center of screen.
set scrolloff=10

" Replace the beeping with a visual flash
set visualbell

" Always use spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set expandtab

" Keep 'undo' history in multiple files, or after closing a file.
set hidden

" Modelines can lead to security vulnerabilities. They are often disabled by
" default, but let's disable them just in case.
set nomodeline

" When no filetype specific indentation is configured, use the same indentation
" as the previous line.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Instead of failing a command because of unsaved changes, just ask if you wish
" to save changed files.
set confirm

" Automatically load external changes to files that don't have unsaved changes
set autoread

" Remove trailing whitespace on save
augroup RemoveTrailingWhitespace
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" Wrap whitespace
set wrap
set linebreak

" Turn off paste mode when leaving insert mode
augroup DisablePasteModeWhenLeavingInsertMode
  autocmd!
  autocmd InsertLeave * set nopaste
augroup END

"""Readability"""
" turn on line numbers
set number

" Adds line/char count on bottom right.
set ruler

" turn on the character delimiter at 80 characters.
set colorcolumn=80

" Tell Vim to read per-filetype settings from 'ftplugin' and 'indent' dir.s
filetype plugin indent on

" Turn on syntax highlighting
syntax on

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

"""Random Fun"""
command! Status echo "All systems are go!"
