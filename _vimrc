" Set Unmodified Settings to Their Default Value
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Remove Temp Files
set nobackup nowritebackup

" Set Number Lines
" set nu
set nu rnu
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Syntax Highlighting
syntax on

" Disable annoying beeping
set noerrorbells
set vb t_vb=

" Set Tab Length to Four Spaces
""set tabstop=4
""set shiftwidth=4

" Ignore Capitalization When Searching
set ignorecase

" Built-in Autocomplete feature
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Autocomplete Braces, Parentheses, Etc.
inoremap { {}<Esc>ha
inoremap {} {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Save With Ctrl-S and Run in Opened Terminal
noremap <silent> <C-S>          :w<CR><C-W>lr<CR><C-W>h
" noremap <silent> <C-S>          :w<CR><C-W>ljc<CR>jr<CR><C-W>h
vnoremap <silent> <C-S>         <C-C>:w<CR>
inoremap <silent> <C-S>         <C-O>:w<CR>

" Paste with Ctrl-V
noremap <silent> <C-V>          "+p<CR>
vnoremap <silent> <C-V>         <C-C>"+p<CR>
inoremap <silent> <C-V>         <C-O>"+p<CR>

" Start Terminal
noremap <C-N>			:vert term<CR><C-W>h<CR>:vert res +30<CR>
vnoremap <C-N>			:vert term<CR><C-W>h<CR>:vert res +30<CR>
inoremap <C-N>			:vert term<CR><C-W>h<CR>:vert res +30<CR>

" Copy lines with <C-L>
noremap <C-L>			:y+<CR>
vnoremap <C-L>			:y+<CR>
inoremap <C-L>			:y+<CR>

" Quit vim
noremap <C-Q>			:q<CR>
vnoremap <C-Q>			:q<CR>
inoremap <C-Q>			:q<CR>

" Quit everything including terminal without saving
""noremap <C-H>			:qa!<CR>

" Always save after insert mode (autosave)
""inoremap <Esc> <Esc>:w<CR>

" MACROS ----------------------

" let @e = "oSs€kbystem.outp.€kb€kb.println(la;hi"
""let @e = "oprint("
let @e = "oSystem.out.println("
" let @e = "oprint()ipaste()i, xhhi''i"
" let @e = "oconsole.log("

let @q = "a<% %>hh"
" let @q = "ox <- cor()i"
""let @q = "a{ko"

" let @f = "a{ikAo"
" let @f = "a{ko"

let @m = "a\\[\\]hiko"
let @j = "I// j"
let @k = "^vlldj"

set splitright
" vert term
