" Syntax highlighting and theme

syntax on

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
" set termguicolors " if you want to run vim in a terminal
" colorscheme breezy
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red

" Lovely linenumbers
set nu


let g:airline_theme='ubaryd'
let g:airline_powerline_fonts=1
set laststatus=2


" highlight the current line
set cursorline
" Highlight active column
set cuc cul"

" Indentation guide settings
" hi IndentGuidesOdd  ctermbg=233
hi IndentGuidesEven ctermbg=236


set ts=2 sw=2 noet
let g:indent_guides_start_level=2
" let g:indent_guides_guide_level=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0


" netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
