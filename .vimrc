set nocompatible
set splitbelow

"indentation
set smartindent
set wildmenu
set wildmode=list:longest ",full
set tabstop=2
set shiftwidth=2
set expandtab

"user interface
set visualbell
set number
set relativenumber

"text rendering
filetype indent plugin on
set encoding=utf-8
syntax on
set nowrap

"searching
set hlsearch
set incsearch
set ignorecase

let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
"let g:indentLine_bgcolor_term = 102
"let g:indentLine_setColors = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"code folding
"set foldmethod=syntax

"general options
set backupdir=~/.cache/vim
set dir=~/.cache/vim


" Set this. Airline will handle the rest.
" let g:airline_theme='gruvbox'                                                                                                             
" let g:airline_powerline_fonts = 1                                                                                                         
" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD   
let g:airline_theme='ayu_dark'

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
" let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

" autocmd VimEnter * NERDTree

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
