"
" FONT:
" https://github.com/adobe-fonts/source-code-pro
" 0
" PLUGINS:
" https://github.com/xolox/vim-misc
" https://github.com/xolox/vim-easytags
"
" Para autocompletar:
" https://github.com/Shougo/neocomplete.vim
"
" Para brincar a lineas:
" https://github.com/easymotion/vim-easymotion
"
" Para usar:
" <leader><leader>(el comando)
" Ejemplo:  ,,w (busca al inicio de todas las palabras)
"           ,,fo (busca todas las o)
"
" Syntax Hilight en JS
" https://github.com/pangloss/vim-javascript.git
" https://github.com/jelera/vim-javascript-syntax
"
" Formateo y Aliniacion
" https://github.com/godlygeek/tabular
"
" Par usar:
" :Tab /= (para alinear en base al signo =)
" :Tab/: (para alinear en base al signo :)
" :Tab /:\zs (para alinear en base al signo : pero colocandolo al final de la primera palabra -> palabra:     textoalineando)
" 
" GitGutter (para ver cambios en el gutter)
" https://github.com/airblade/vim-gitgutter
"
" Indent Guides:
" git://github.com/nathanaelkane/vim-indent-guides.git
"
" Para togglearlas: <leader>ig
"
" Para hacer surround:
" Normal mode
" -----------
" ds  - delete a surrounding
" cs  - change a surrounding
" ys  - add a surrounding
" yS  - add a surrounding and place the surrounded text on a new line + indent it
" yss - add a surrounding to the whole line
" ySs - add a surrounding to the whole line, place it on a new line + indent it
" ySS - same as ySs

" Visual mode
" -----------
" s   - in visual mode, add a surrounding
" S   - in visual mode, add a surrounding but place text on new line + indent it

" Insert mode
" -----------
" <CTRL-s> - in insert mode, add a surrounding
" <CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
" <CTRL-g>s - same as <CTRL-s>
" <CTRL-g>S - same as <CTRL-s><CTRL-s>
"
" Alternar entre archivos .c y .h
" http://www.vim.org/scripts/script.php?script_id=31
"
" Usar: :A para alternar
" 
"
" UNDO-TREE, historial de UNDO tipo arbol
"
" https://github.com/mbbill/undotree
" En este vimrc se mapea a <leader>8
"

" Numeros relativos
set relativenumber
set number

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>0 :tablast<cr>

" Cambia el working directory al dir del archivo que tenemos seleccionado
autocmd BufEnter * silent! lcd %:p:h

" Hace que los tags se busquen desde el dir del archivo seleccionado hasta el root
set tags=tags;

"****************** configure neocomplete **************************
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'


"""""""""""""" SYNTASTIC """"""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_enable_signs= 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_c_checkers = ['make']
" let g:syntastic_cpp_checkers = ['make']

""""""""""""""" Javascript syntax """""""""""""""
let g:javascript_enable_domhtmlcss = 1

"""""""""""""" GitGutter """"""""""""""""
let g:gitgutter_realtime = 1

"""""""""""""" TAGBAR """"""""""""""""
map <leader>9 :TagbarToggle<CR>


"""""""""""""" UNDO-TREE """"""""""""""""
map <leader>8 :UndotreeToggle<CR>


"""""""""""""" SNIPPETS """"""""""""""""
" Comentarios:
inoremap $$ /*<space><space>*/<esc>hhi
inoremap $# /**/<esc>hha<CR><CR><BS><BS><esc>kA<TAB>


"""""""""""""" UNDO """"""""""""""""
set undolevels = 1000 "maximum number of changes that can be undone
set undoreload = 10000 "maximum number lines to save for undo on a buffer reload


