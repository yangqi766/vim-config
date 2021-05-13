
" See plugin/bufkill.vim
" use emacs keybind
nmap <C-x>k :BD<CR>
"Write buffer (save)
nnoremap <C-s> :<C-u>write<CR>
"yank to end
nnoremap Y y$
" Whitespace jump (see plugin/whitespace.vim)
nnoremap ]w :<C-u>WhitespaceNext<CR>
nnoremap [w :<C-u>WhitespacePrev<CR>
" Remove spaces at the end of lines
nnoremap <silent> <Space>cw :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" insert keymap like emacs
" inoremap <C-w> <C-[>diwa
inoremap <C-w> <ESC>wwi
inoremap <C-x> <ESC>wdwi
inoremap <C-b> <C-G>u<C-U>
inoremap <C-r> <ESC>d$i
inoremap <C-d> <Del>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-a> <ESC>0wi
inoremap <C-o> <ESC>o
inoremap <C-e> <ESC>$a
inoremap <C-u> <ESC>ua

inoremap <localleader>f <ESC><C-f>i
inoremap <localleader>u <ESC><C-u>i
"insert a newline
inoremap <C-s> <esc>:w<CR>
inoremap <leader>q <esc>:wq<CR>

" command line alias
cnoremap <C-p> <Up>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

tnoremap <A-[> <C-\><C-n>

function! s:QuiteVim() abort
  if empty(expand('%:t'))
    execute ":q"
  else
    execute ":wq!"
  endif
endfunction
" Quiet
nnoremap <leader>qq :call <SID>QuiteVim()<CR>
nnoremap <leader>qw <esc>:q!<CR>

"switch window
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" settings for resize splitted window
nmap -- :vertical resize -3<CR>
nmap ++ :vertical resize +3<CR>

" Session management shortcuts (see plugin/sessions.vim)
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
