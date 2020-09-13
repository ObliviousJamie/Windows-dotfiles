"Can leave buffer without saving
set hidden 

"Live regex highlighting
set incsearch 

"Ctrl-X/Ctrl-A can increment letters too
set nrformats+=alpha 

"Set case insensitive search, except when using capital letters
set ignorecase smartcase 

"Use build in color scheme
colorscheme elflord

"Set vim to replace vimgrep grep engine with ripgrep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

"Set line numbers
set number relativenumber

"Enable quick find shortcuts using fuzzy search
"Ctrl-p searchs all files in directory
"Ctrl-t does a grep search 
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-t> :Rg<CR>

"Enable blockstyle cursor (might not work depending on environment)
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
