"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" call pathogen#infect('~/.vim_runtime/sources_forked/{}')
" call pathogen#infect('~/.vim_runtime/sources_non_forked/{}')
" call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'  " Sort by file extension.
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 20
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
" ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
" snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=25
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
map <leader>nm :NERDTreeMirror<cr>
map <leader>bb :Bookmark<cr>
map <leader>bn :Bookmark 
map <leader>br :BookmarkToRoot 
"map <leader>bo :OpenBookmark 
map <leader>bc :ClearBookmarks<cr> 
"map <leader>bf :RevealBookmark 




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "tabedit " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc
nnoremap <silent> <leader>l :call SyntasticCheckCoffeescript()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bash-support (bash IDE) 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:BASH_AuthorName = 'Leon'
let g:BASH_Email      = 'xiaodi555549@gmail.com'
let g:BASH_Company    = 'green'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet-vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emment_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of followiing code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_javascript = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'javascript': {'left': '/**', 'right': '*/' }}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>pi :PluginInstall<cr>
map <leader>pc :PluginClean<cr>
map <leader>pu :PluginUpdate<cr>
map <leader>pl :PluginList<cr>
map <leader>ps :PluginSearch 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gs :Gstatus<cr>
map <leader>ga :Git add .<cr>
map <leader>gb :Git checkout 
map <leader>gc :Gcommit -m  
map <leader>gr :Git reset<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easy-motion 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Disable default mappings
let g:EasyMotion_do_mapping = 0 

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

"map <Leader> <Plug>(easymotion-prefix)
map <leader>ms <Plug>(easymotion-overwin-f2)
map <leader>mj <Plug>(easymotion-j)
map <leader>mk <Plug>(easymotion-k)



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YcmCompleteMe 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>jd :YcmCompleter GoToDefinition<cr>
map <leader>jr :YcmCompleter GoToReferences<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Numbers 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:numbers_exclude = ['nerdtree', 'bufexplorer', 'mru']
nnoremap <F3> :NumbersToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ultisnips 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltisnipsExpandTrigger="<F4>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" map <leader>uu :UltiSnips#ExpandSnippet()<cr>
