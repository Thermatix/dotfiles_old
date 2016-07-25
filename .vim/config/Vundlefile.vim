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

"=====ruby=====
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Rails
Bundle 'tpope/vim-rails'
" Ruby Tests
Bundle 'skalnik/vim-vroom'
" erb
"Bundle 'whatyouhide/vim-textobj-erb'


"=====javascript=====
" javascript
Bundle 'pangloss/vim-javascript'
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

"============Vim plugins============

" Dependencies of snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"Good looking bottom :)
Bundle 'vim-airline/vim-airline'

" Git tools
Bundle 'tpope/vim-fugitive'
" Dependency managment

" Gutter
Bundle 'airblade/vim-gitgutter'

" Surround your code :)
"Bundle 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Bundle 'jiangmiao/auto-pairs'

"multi cursor
Bundle 'terryma/vim-multiple-cursors'

" Fuzzu finder for vim (CTRL+P)
Bundle 'kien/ctrlp.vim'

"enables silver_searcher
"Bundle 'rking/ag.vim'

" Easy motion for easy motion
Bundle 'Lokaltog/vim-easymotion'
"===============Tmux plugins====================
" Running tests in tmux session
Bundle 'tpope/vim-dispatch'
"navigate tmux pains easily
Bundle 'christoomey/vim-tmux-navigator'
"allows Vim events to work in Tmux
Bundle 'tmux-plugins/vim-tmux-focus-events'

"syntax highlighting for tmux/conf
Bundle 'tmux-plugins/vim-tmux'

" Syntax checking
Bundle 'scrooloose/syntastic'

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

" Sublime/atom style minimap
Bundle 'severin-lemaignan/vim-minimap'

" auto brackets plus dependencies
Bundle 'LucHermitte/lh-vim-lib'
Bundle 'LucHermitte/lh-tags'
Bundle 'LucHermitte/lh-dev'
Bundle 'LucHermitte/lh-brackets'
