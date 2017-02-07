set nocompatible " be iMproved
so ~/.vim/config/Vundlefile.vim
" so ~/.vim/plugin/bclose.vim
so ~/.vim/plugin/function_tag_finder.vim

set tags=./tags; " Set tags directory
set autoindent " Auto indention should be on
set virtualedit=onemore 

filetype plugin indent on

so ~/.vim/config/visual.vim

so ~/.vim/config/vimFileConfig.vim

so ~/.vim/config/mapings.vim

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

"key custom key mappings for muli curser
let g:multi_cursor_use_default_mapping=0

" Vim-Racer config
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1


" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamed
set backspace=2
set confirm
set hidden

let NERDTreeShowHidden=1

function! StartUpWithoutArgs()
    if 0 == argc()
        NERDTreeFocusToggle
    end
endfunction

set autoread
au CursorHold * if exists("t:NerdTreeBufName") |  @:call nerdtree#ui_glue#invokeKeyMap("C")<CR>| endif

let g:vroom_map_keys = 0
let g:vroom_use_dispatch = 1
let g:vroom_use_zeus = 1




augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby'



"Silver Searcher
if executable('ag')
	 " Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor

	  "    Use ag in CtrlP for listing files. Lightning fast and
	      " respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	    " ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif

so ~/.vim/config/startup_commands.vim
