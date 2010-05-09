set nocompatible
set backspace=indent,eol,start
set backup		" keep a backup file
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
map Q gq
set hlsearch
filetype plugin indent on
autocmd FileType text setlocal textwidth=78
set autoindent
set number
set tabstop=4 
set shiftwidth=4 
set expandtab
set nowrap
set cul

map <F5> <ESC>:tabnew<CR>
map <F6> <ESC>:tabprev<CR>
map <F7> <ESC>:tabnext<CR>
map <F8> <ESC>:tabclose<CR>

imap <F5> <ESC>:tabnew<CR>
imap <F6> <ESC>:tabprev<CR>i
imap <F7> <ESC>:tabnext<CR>i
imap <F8> <ESC>:tabclose<CR>i

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>li

"map <F9><ESC>:Tlist<CR>
"imap <F9><ESC>:Tlist<CR>i

map <F12> <ESC>:set hlsearch!<CR>
map <F10> <ESC>:sh<CR>
map <F11> <ESC>:set number!<CR>

" for debugs
fun SetDebugColoring()
    syn keyword cDEBUG1 DBG DBG_CODE DBG_MEM log_wnd_printk
    syn keyword cDEBUG2 printk
    hi cDEBUG1 term=bold ctermfg=Green
    hi cDEBUG2 term=bold ctermfg=Cyan
endfun

au BufRead,BufNewFile *.c,*.h call SetDebugColoring()
syntax on

