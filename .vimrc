"==============================================================================
" vim default  
"==============================================================================

" auto save config
" should close once done config 
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set encoding=utf8

" no compatiible model
set nocompatible

set nu " show line number
set cursorline " show cursor
" set cursorcolumn " highlight current vertical  line
set showmatch " show match

" set allow delete button
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

set autoread

set selection=exclusive

" tab config 
set tabstop=4 " tab = 4 spaces
set shiftwidth=4 " auto tab
set autoindent " auto indent

" real time search
set incsearch
" ignore case sentive
set ignorecase

" set code fold module
"set foldmethod=indent
set foldmethod=syntax
" set start vim fold module
set nofoldenable


syntax enable
syntax on                    " file type

set clipboard+=unnamed
set history=1000
set nobackup
set nowb
set noswapfile
set mouse=a
set novisualbell
set ruler
set hlsearch
set nowrap
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

filetype plugin indent on    " auto complete
set completeopt=longest,menu


" auto save
au InsertLeave *.go,*.sh,*.php write

let mapleader=";"

"==============================================================================
" vim default end 
"==============================================================================

"==============================================================================
" vim Plug
"==============================================================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'bhilburn/powerlevel9k'
Plug 'preservim/tagbar'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'rakr/vim-one'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
Plug 'dgryski/vim-godef'
call plug#end()
" vim Plug end
"==============================================================================

"==============================================================================
" colorscheme choice
"==============================================================================

"colorscheme jellybeans
"colorscheme one
colorscheme gruvbox

"set termguicolors
"colorscheme nightfly

set background=dark
highlight Normal guibg=NONE ctermbg=None

"set guifont=Fira\ Code:h12
":hi treeDir guifg=#ff0000 guibg=#00ff00

"==============================================================================
" colorscheme choice end
"==============================================================================

"==============================================================================
"vim-nerdtree-syntax-highlight settings
"==============================================================================

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {} 
let g:NERDTreeExtensionHighlightColor['sql'] = s:gray 
let g:NERDTreeExtensionHighlightColor['go'] = s:blue 
let g:NERDTreeExtensionHighlightColor['json'] = s:orange 
let g:NERDTreeExtensionHighlightColor['yaml'] = s:salmon 
let g:NERDTreeExtensionHighlightColor['yml'] = s:salmon 
let g:NERDTreeExtensionHighlightColor['xml'] = s:beige 
let g:NERDTreeExtensionHighlightColor['md'] = s:red 
let g:NERDTreeExtensionHighlightColor['js'] = s:darkOrange 
let g:NERDTreeExtensionHighlightColor['html'] = s:lightGreen 

"==============================================================================
"vim-nerdtree-syntax-highlight settings end
"==============================================================================

"==============================================================================
" nerdtree-git-plugin settings
"==============================================================================

let g:NERDTreeGitStatusShowIgnored = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"==============================================================================
" nerdtree-git-plugin settings end
"==============================================================================

"==============================================================================
" vim-airline 
"==============================================================================

let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='fruit_punch'

"==============================================================================
" vim-airline end 
"==============================================================================

"==============================================================================
" youcompleteme
"==============================================================================

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'python,java,go': ['re!\w{2}'],
			\ 'cs,javascript': ['re!\w{2}'],
			\ }

au BufRead,BufNewFile *.go set filetype=go
"==============================================================================
" youcompleteme end
"==============================================================================



"==============================================================================
" vim-go 
"==============================================================================

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)

"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>l <Plug>(go-lint)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
let g:go_metalinter_deadline = "5s"

let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }
let g:godef_split = 2 
let g:godef_same_file_in_same_window = 1 
"==============================================================================
" vim-go end 
"==============================================================================

"==============================================================================
" tagbar 
"==============================================================================

let g:go_gotags_bin='~/go/bin/gotags'
let ctagsbin = 'gotags'
" check if vim-go is available and has the binary
if !executable('gotags') && !exists("g:go_gotags_bin")
    let ctagsbin = expand(g:go_gotags_bin),
endif

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : expand(g:go_gotags_bin),
     \'ctagsargs' : '-sort -silent'
\ }

"==============================================================================
" tagbar end 
"==============================================================================

"==============================================================================
" blamer
"==============================================================================

let g:blamer_enabled = 1
let g:blamer_show_in_visual_modes = 0

"==============================================================================
" blamer end
"==============================================================================

"==============================================================================
" map
"==============================================================================

nmap <leader>w :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>x :x<CR>
nmap qq :q<CR>
nmap xx :x<CR>
nmap <leader>ls :ls<CR>

nmap <F8> :TagbarToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"==============================================================================
" map end
"==============================================================================
set tags=./tags,tags
