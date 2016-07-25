" Syntax highlighting and theme

syntax on

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Lovely linenumbers
set nu


let g:airline_theme='luna'
let g:airline_powerline_fonts=1
set laststatus=2


" highlight the current line
set cursorline
" Highlight active column
set cuc cul"
