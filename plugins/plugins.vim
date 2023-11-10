call plug#begin('~/.vim/plugged')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                           EDITOR
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'preservim/nerdtree' " Usefull filetree
Plug 'junegunn/fzf.vim' " File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " File searhcing

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                           LANGUAGES
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " Amazing autocomplete/typing support for much languages
Plug 'sheerun/vim-polyglot'

Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'branch': 'release/1.x',
    \ 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'less',
      \ 'scss',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'lua',
      \ 'python',
      \ 'html',
      \ 'swift' ] } " Good code autoformatting
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] } " "
Plug 'elzr/vim-json'
"************************* TYPESCRIPT *************************
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"*************************** GOLANG ***************************
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'branch': 'master' } " Golang support


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                           TEMPLATES
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ryanoasis/vim-devicons' " Nice icons for nerd tree commander
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes' " Themes for airlines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                             GIT
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'APZelos/blamer.nvim' " Show last editor of current line
Plug 'tpope/vim-fugitive' " Usefull utility for working with git
Plug 'airblade/vim-gitgutter' " Jumping between changes

call plug#end()
