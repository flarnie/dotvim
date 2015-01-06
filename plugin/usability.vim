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
set formatoptions+=t

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

" terminal-specific magic
let s:iterm   = exists('$ITERM_PROFILE') || filereadable(expand("~/.vim/.assume-iterm"))
let s:screen  = &term =~ 'screen'
let s:tmux    = exists('$TMUX')
let s:xterm   = &term =~ 'xterm'

" make use of Xterm "bracketed paste mode"
" http://www.xfree86.org/current/ctlseqs.html#Bracketed%20Paste%20Mode
" http://stackoverflow.com/questions/5585129
if s:screen || s:xterm
  function! s:BeginXTermPaste(ret)
    set paste
    return a:ret
  endfunction

  " enable bracketed paste mode on entering Vim
  let &t_ti .= "\e[?2004h"

  " disable bracketed paste mode on leaving Vim
  let &t_te = "\e[?2004l" . &t_te

  set pastetoggle=<Esc>[201~
  inoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("")
  nnoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("i")
  vnoremap <expr> <Esc>[200~ <SID>BeginXTermPaste("c")
  cnoremap <Esc>[200~ <nop>
  cnoremap <Esc>[201~ <nop>
endif

" turn off bracket matching, because it makes Vim slower
let g:loaded_matchparen=1
