" File: keymap.vim

" normal mode remapping
" close buffer
nnoremap <silent> <C-x>k :bdelete
" save
nnoremap <silent> <C-s> :write
" buffer jump
nnoremap ]b :bn
nnoremap [b :bp
" window jump
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" resize window
nmap <A-[> :vertical resize -5
nmap <A-]> :vertical resize +5

" insert mode remapping
" save
inoremap <C-s> <ESC>:w<CR>
" movement
inoremap <C-b> <Left>
inoremap <C-f> <Right>
" append
inoremap <C-a> <ESC>^i
" new next line
inoremap <C-j> <ESC>o
" new prev line
inoremap <C-k> <ESC>O

" commandline remap
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>