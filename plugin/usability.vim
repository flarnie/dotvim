"""Usability"""
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

" Autodetect the filetype when renaming a file.
" Annoyingly, most Vim plugins that do filetype detection don't run subscribe to
" the buffer rename event (BufFilePost), so we have to execute the BufReadPost
" autocommand, which is where most filetype detectors get run.
autocmd BufFilePost *.* filetype detect
