" ***************** vim conf ************** "
"
filetype on
"
filetype plugin on

"
filetype indent on

"
syntax enable
"
syntax on
"set background=dark
"colorscheme solarized
colorscheme default
" -ctags setting-
set tags=tags
set tags+=./tags
"set tags+=/cygdrive/d/Keil_v5/ARM/ARMCC/tags

set nocompatible " 
set incsearch " 
set ignorecase " 
set wildmenu " 
set autoread " 
set gcr=a:block-blinkon0 " 
set laststatus=2 " 
set ruler " 
set number " 
"set cursorline "
"set cursorcolumn "
set hlsearch " 
" set nowrap "
set backspace=2 " 
"set backspace=indent,eol,start
set novisualbell

" 
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"set ts=3
"set expandtab
"set autoindent

"" 
"set guioptions-=m
"set guioptions-=T
"
"" 
set expandtab
"" 
set tabstop=4
"" 
set shiftwidth=4
"" 
set softtabstop=4
"" 
"set foldmethod=syntax
"" 
"set nofoldenable
"" 
"set shell=bash\ -i
"
"
"" ***************  *****************
"
"" <Leader>
""let mapleader="\<space>"
"let mapleader="'"
"
"" 
"vnoremap <Leader>y "+y
"
""  vim
"nmap <Leader>p "+p
"
"" 
"nmap <Leader>q :q<CR>
"
"" 
"nmap <Leader>w :w<CR>
"
""  vim
""nmap <Leader>WQ :wa<CR>:q<CR>
"
""  vim
""nmap <Leader>Q :qa!<CR>
"
"" 
"nnoremap nw <C-W><C-W>
"
"" 
"nnoremap <Leader>l <C-W>l
"
"" 
"nnoremap <Leader>h <C-W>h
"
"" 
"nnoremap <Leader>k <C-W>k
"
"" 
"nnoremap <Leader>j <C-W>j
"
"" 
"nmap <Leader>M %
"
"nnoremap <Leader>g <C-]>
"nnoremap <Leader>b <C-t>


" **************  ************ "
" Download address
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vundle 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle  vundle#begin() ºÍ vundle#end() 
call vundle#begin()
"Plugin 'taglist.vim'
Plugin 'andyzhushuai/winmanager'
Plugin 'Neocomplcache'
"Plugin 'nerdtree'
"Plugin 'Solarized'
"Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline' "status 
"Plugin 'octol/vim-cpp-enhanced-highlight' "
"Plugin 'kshenoy/vim-signature' "
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines' "
Plugin 'majutsushi/tagbar' "taglist ctags
"Plugin 'scrooloose/nerdcommenter' "
Plugin 'scrooloose/nerdtree' " 
"Plugin 'Valloric/YouCompleteMe' "
Plugin 'kien/ctrlp.vim' "´ctrl+p´
"Plugin 'vim-scripts/grep.vim' "Grep
"Plugin 'Lokaltog/vim-easymotion' "leader
"Plugin 'vim-scripts/ShowTrailingWhitespace.git' "¸
"Plugin 'vim-scripts/indentpython.vim.git'
"Plugin 'vim-scripts/Solarized.git' "
"Plugin 'nathanaelkane/vim-indent-guides.git' "
""Plugin 'vim-scripts/indexer.tar.gz' "
""Plugin 'vim-scripts/DfrankUtil' "indexer 
""Plugin 'vim-scripts/vimprj' "indexer 
"Plugin 'davidhalter/jedi-vim' "python 
"Plugin 'vim-scripts/Markdown'
"Plugin 'tpope/vim-surround'
"Plugin 'ekalinin/Dockerfile.vim'
" 
call vundle#end()
filetype on

" Powerline 
" 
let g:Powerline_colorscheme='solarized256'



" tagbar
"  tagbar 
let tagbar_left=1
" " identifier list by tag
nnoremap <Leader>t :TagbarToggle<CR>
" " 
let tagbar_width=32
" " tagbar 
let g:tagbar_compact=1
" " ctags 

"" signature
"let g:SignatureMap = {
"        \ 'Leader'             :  "m",
"        \ 'PlaceNextMark'      :  "m,",
"        \ 'ToggleMarkAtLine'   :  "m.",
"        \ 'PurgeMarksAtLine'   :  "m-",
"        \ 'DeleteMark'         :  "dm",
"        \ 'PurgeMarks'         :  "mda",
"        \ 'PurgeMarkers'       :  "m<BS>",
"        \ 'GotoNextLineAlpha'  :  "']",
"        \ 'GotoPrevLineAlpha'  :  "'[",
"        \ 'GotoNextSpotAlpha'  :  "`]",
"        \ 'GotoPrevSpotAlpha'  :  "`[",
"        \ 'GotoNextLineByPos'  :  "]'",
"        \ 'GotoPrevLineByPos'  :  "['",
"        \ 'GotoNextSpotByPos'  :  "mn",
"        \ 'GotoPrevSpotByPos'  :  "mp",
"        \ 'GotoNextMarker'     :  "[+",
"        \ 'GotoPrevMarker'     :  "[-",
"        \ 'GotoNextMarkerAny'  :  "]=",
"        \ 'GotoPrevMarkerAny'  :  "[=",
"        \ 'ListLocalMarks'     :  "ms",
"        \ 'ListLocalMarkers'   :  "m?"
"        \ }
"
"  NERDTree file list
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" NERDTree
"autocmd vimenter * NERDTree
nmap <Leader>f :NERDTreeToggle<CR>
" NERDTree
let NERDTreeWinSize=30
" NERDTree
let NERDTreeWinPos="right"
" 
let NERDTreeShowHidden=1
" NERDTree 
let NERDTreeMinimalUI=1
" buffer
let NERDTreeAutoDeleteBuffer=1
"
"" YCM 
""
""highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
""
""highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
"" 
"let g:ycm_complete_in_comments=1
"" vim .ycm_extra_conf.py
"let g:ycm_confirm_extra_conf=0
""
"let g:ycm_collect_identifiers_from_tags_files=1
"" tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
"" OmniCppComplete 
""inoremap <leader>; <C-x><C-o>
""
"set completeopt-=preview
""
"let g:ycm_min_num_of_chars_for_completion=1
""
"let g:ycm_cache_omnifunc=0
""
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"
"
"""" color settings
"set t_Co=256
"if has("gui_running")
"    set guioptions=gR
"    set mousemodel=popup
"    set background=light
"    ""hi LineNr cterm=bold guibg=black guifg=white
"    ""hi CursorLine cterm=none ctermbg=lightgray ctermfg=none
"    ""hi CursorColumn cterm=none ctermbg=lightgray ctermfg=none
"else
"    set background=dark
"    ""hi LineNr cterm=bold ctermbg=black ctermfg=white
"    ""hi CursorLine cterm=none ctermbg=darkgray ctermfg=none
"    ""hi CursorColumn cterm=none ctermbg=darkgray ctermfg=none
"endif
"colorscheme solarized
""colorscheme default
"
"" indent guides
""let g:indent_guides_enable_on_vim_startup=1
""
"let g:indent_guides_start_level=2
""let g:indent_guides_auto_colors = 0
""hi IndentGuidesOdd  guibg=red   ctermbg=3
""hi IndentGuidesEven guibg=green ctermbg=4
"" 
"let g:indent_guides_guide_size=1
"" 
"noremap <Leader>sj :IndentGuidesToggle<CR>
