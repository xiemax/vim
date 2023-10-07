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
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Git
noremap gs <Esc> :Gstatus<CR> " Get git status
noremap gl <Esc> :Gdiffsplit \| HEAD~1<CR> " Split git info for compare last commit
