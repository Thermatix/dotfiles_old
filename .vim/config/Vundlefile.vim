" For vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Vundler"
Bundle 'gmarik/vundle'

"============Snippets/autocompletion============

" Snippets for our use :)
Bundle 'garbas/vim-snipmate'

" Commenting and uncommenting stuff
Bundle 'tomtom/tcomment_vim'

Bundle 'honza/vim-snippets'

" Tab completions
Bundle 'ervandew/supertab'

"auto completion
Bundle 'Valloric/YouCompleteMe'

"react snippits

Bundle 'justinj/vim-react-snippets'

"============Themes============

Bundle 'tomasr/molokai'

" air-line themes
Bundle 'vim-airline/vim-airline-themes'


Bundle 'altercation/vim-colors-solarized'

"============language packages============
"=====oneoffs=====
"Toml support
Bundle "cespare/vim-toml"


"=====ruby=====
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Rails
Bundle 'tpope/vim-rails'
" Ruby Tests
Bundle 'skalnik/vim-vroom'
" erb
"Bundle 'whatyouhide/vim-textobj-erb'

"Heredoc Highlighting
Bundle 'joker1007/vim-ruby-heredoc-syntax'

"=====javascript=====
" javascript
Bundle 'pangloss/vim-javascript'
"Tern-based JavaScript editing support
Bundle 'ternjs/tern_for_vim'
"handle bars templates
Bundle 'nono/vim-handlebars'
" jsx syntax
Bundle 'mxw/vim-jsx'
"Json syntax
Bundle 'elzr/vim-json'

"==coffeescript=="
" CoffeeScript syntax
Bundle 'kchmck/vim-coffee-script'


"=====Python=====
"Python Auto completion
Bundle "davidhalter/jedi-vim"

"=====Rust=======
"Rust Auto completion
" Bundle "rust-lang/rust.vim"
"forked Pluging, using this in attempt to fix missing crate problem
Bundle "jlevesy/rust.vim"

"============Vim plugins============

" Dependencies of snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"Good looking bottom :)
Bundle 'vim-airline/vim-airline'

" Git tools
Bundle 'tpope/vim-fugitive'
"gtk clone
Bundle 'gregsexton/gitv'

" Gutter
Bundle 'airblade/vim-gitgutter'

" Surround your code :)
"Bundle 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Bundle 'jiangmiao/auto-pairs'

"multi cursor
Bundle 'terryma/vim-multiple-cursors'

"
" Bundle 'vim-scripts/multiselect'

" Fuzzu finder for vim 
Bundle 'wincent/command-t'


" Easy motion for easy motion
"Bundle 'Lokaltog/vim-easymotion'
"===============Tmux plugins====================
" Running tests in tmux session
Bundle 'tpope/vim-dispatch'
"navigate tmux pains easily
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tmux-plugins/vim-tmux-focus-events'

"syntax highlighting for tmux/conf
Bundle 'tmux-plugins/vim-tmux'

"Slime like plugin, runs selected text in tmux selected tmux pane
Bundle 'epeli/slimux'


" Syntax checking
Bundle 'scrooloose/syntastic'

"auto file taging and browser
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'majutsushi/tagbar'
Bundle 'ludovicchabant/vim-gutentags'

"Changes Bracket colours depending on nesting
Bundle 'kien/rainbow_parentheses.vim'

"markdown
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'



"open FIle at line
Bundle 'bogado/file-line'

"config Generator for ycm
Bundle 'rdnetto/YCM-Generator'

" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'danro/rename.vim'

"Buffer tab line
Bundle 'ap/vim-buftabline'

" nerd tree and plugins
Bundle 'scrooloose/nerdTree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'jistr/vim-nerdtree-tabs'

