" Resize pane
noremap <silent> <C-S-Left> :vertical resize -5<CR>
noremap <silent> <C-S-Right> :vertical resize +5<CR>
noremap <silent> <C-S-Up> :resize -5<CR>
noremap <silent> <C-S-Down> :resize +5<CR>

" Tab switching
map gn :bn<cr>
map gp :bp<cr>
map gc :bd<cr>

" Fast search text in files
nmap <silent> <C-r> :Rg<CR>

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" MAC os binding for NERDTree
nnoremap † <Esc> :NERDTreeToggle<CR> " ALT+T - toggle file
nnoremap ƒ <Esc> :NERDTreeFind<CR>== " ALT+F reveal current file in nerdtree
nnoremap ø :NERDTree<CR>== " ALT+O open nerdtree

" FZF binding for file History
noremap ˙ <Esc> :History<CR>

" Clear search highlighting
nnoremap <silent> <S-l> :<C-u>nohlsearch<CR><S-l>

" Git
noremap gs <Esc> :Gstatus<CR> " Get git status
noremap gl <Esc> :Gdiffsplit \| HEAD~1<CR> " Split git info for compare last commit

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" move selected lines up one line
xnoremap ˚ :m-2<CR>gv=gv

" move selected lines down one line
xnoremap ∆ :m'>+<CR>gv=gv

" move current line up one line
nnoremap ˚ :<C-u>m-2<CR>==

" move current line down one line
nnoremap ∆ :<C-u>m+<CR>==˚

" Jump forward by word in insert mode
inoremap <C-B> <C-\><C-O>b

" Jump backward by word in insert mode
inoremap <C-W> <C-\><C-O>w
