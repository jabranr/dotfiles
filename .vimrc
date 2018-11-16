" Inspired from https://dougblack.io/words/a-good-vimrc.html

" Enable syntax colors
syntax enable

" Set line numbers
set number
set relativenumber

" Set tabs and spaces
set tabstop=2
set softtabstop=2
set expandtab

" Show last command at bottom
set showcmd

" Highlight current line
set cursorline

" Highlight matching brackets
set showmatch

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Code folding
set foldenable
set foldlevelstart=10
set foldnestmax=10

" space open/closes folds
nnoremap <space> za

" fold based on indent level
set foldmethod=indent

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction