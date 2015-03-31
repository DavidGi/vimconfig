" Fichier de configuration de Vim

set nocompatible              " be iMproved, required
filetype off                  " required

"
" set the runtime path to include Vundle and initialize
"""set rtp+=~/.vim/bundle/Vundle.vim
"""call vundle#begin()

" let Vundle manage Vundle, required
"""Plugin 'gmarik/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'
"""Plugin 'nerdtree'
"""Plugin 'tagbar'
"Plugin 'taglist.vim'
"""Plugin 'vim-autotag'

"""call vundle#end()            " required
"""filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"""filetype plugin on
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


execute pathogen#infect()

filetype plugin on
filetype indent on
set sw=4
set omnifunc=syntaxcomplete#Complete

set mouse=a
set backspace=indent,eol,start

let g:tex_indent_items = 1

filetype on       " enable file type detection
syntax on         " syntax highlighting
set t_Co=256
set background=dark
"colorscheme watermark 
colorscheme perso1_dark


set smartindent   " smart code indentation
set smarttab      " smart tabs

" shortcut to past from clipboard
imap <C-P> <ESC>"+pa

set nu " displays column numbers

set makeprg=make\ -f\ Makefile
nnoremap <F4> :make!<CR>
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickfixCmdPost    l* nested lwindow
nnoremap <F5> :! pdflatex %<CR> 

set tabstop =4
set shiftwidth =4
set softtabstop =4

set wildmenu    " displays menu
set wildmode =list:longest,list:full    " displays all possibilities
set wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    " ignore some file types for completion 

"set colorcolumn=80
"highlight colorcolumn ctermbg=darkgray
"set textwidth =80

au BufNewFile,BufRead *.tpp set filetype=cpp

let g:netrw_liststyle=3

" open the definition in a new tab
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" open the definition in a vertical split
map <C-_> :sp <CR>:exec("tag ".expand("<cword>"))<CR>


"     ###   Plugin NerdTree   ###
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-e> :NERDTreeToggle<CR>


"     ###   Plugin Tagbar   ###
nnoremap <silent> <F9> :Tagbar<CR>


"     ###   Plugin ultisnips   ###
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"     ###   Plugin Syntastic   ###
" syntastic : automatic window error
"let g:syntastic_always_populate_loc_list = 1


"     ###   Plugin Taglist   ###
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"nnoremap <silent> <F8> :TlistToggle<CR>
"set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
"let Tlist_Process_File_Always = 1


"     ###   clang_complete   ###
"let g:clang_use_library=1
"let g:clang_library_path="/usr/lib/"
"let g:clang_auto_select=1 "select first entry in popup menu but don't insert in code
"let g:clang_complete_auto=1 "auto complete after -> . and ::
"let g:clang_complete_copen=1 "open quick fix on error
"let g:clang_complete_hl_errors=1 " highlight errors and warnings 
"let g:clang_periodic_quickfix=1 " update quickfix periodically
"let g:clang_trailing_placeholder=1 " add trailing placeholder after function
"let g:clang_close_preview=1 " close preview window after completion
"let g:clang_user_options='-Wc++11-extensions -std=c++0x -I/usr/lib/c++/v1/ -I/Users/aliak/dev/source/boost_1_53_0 -std=c++11'
"let g:clang_snippets=1 " some magic after function ( or ,
"let g:clang_snippets_engine='snipmate'
"let g:clang_debug=1
