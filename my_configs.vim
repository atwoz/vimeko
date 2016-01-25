"
" FONT:
" https://github.com/adobe-fonts/source-code-pro
" Instalar la font normal, ya con eso se usara.
"
" TAGS:
" Para que los tags se actualicen automaticamente.
" https://github.com/xolox/vim-misc
" https://github.com/xolox/vim-easytags
"
" AUTOCOMPLETAR:
" https://github.com/Shougo/neocomplete.vim
"
" MOVIMIENTO_RAPIDO:
" https://github.com/easymotion/vim-easymotion
"
" Para usar:
" <leader><leader>(el comando)
" Ejemplo:  ,,w (busca al inicio de todas las palabras)
"           ,,fo (busca todas las o)
"
" JAVASCRIPT: 
" https://github.com/pangloss/vim-javascript.git
" https://github.com/jelera/vim-javascript-syntax
"
" FORMATEO_ALINIACION:
" https://github.com/godlygeek/tabular
"
" Par usar:
" :Tab /= (para alinear en base al signo =)
" :Tab/: (para alinear en base al signo :)
" :Tab /:\zs (para alinear en base al signo : pero colocandolo al final de la 
" primera palabra -> palabra:     textoalineando)
" 
" GIT:
" https://github.com/airblade/vim-gitgutter
"
" Indent Guides:
" git://github.com/nathanaelkane/vim-indent-guides.git
"
" Para togglearlas: <leader>ig
"
" AUTO INDENT PASTE:
" Para que al user p y P, lo que pegues tenga indentacion correcta
" https://github.com/sickill/vim-pasta
" 
" MATCHIT:
" Extiende la funcionalidad de %, para que tambien funcione con tags html, xml, etc.
" https://github.com/tmhedberg/matchit
"
" Para Hacer Surround:
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
" Alternar Entre Archivos:
" .c y .h
" http://www.vim.org/scripts/script.php?script_id=31
"
" Para usar: :A para alternar
" 
" UNDOTREE:
" historial de UNDO tipo arbol
"
" https://github.com/mbbill/undotree
" En este vimrc se mapea a <leader>8
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" let g:acp_enableAtStartup = 0
" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" Easy Aligns
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
  " return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  " return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"" Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
    " let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Con esto evitamos que el NeoComplete entre en accion cuando tenemos ulticursores
function! Multiple_cursors_before()
    " exe 'NeoCompleteDisable'
endfunction

function! Multiple_cursors_after()
    " exe 'NeoCompleteEnable'
endfunction

"""""""""""""" SYNTASTIC """"""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_enable_signs= 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_html_checkers = ['tidy']

" C
let g:syntastic_c_config_file=".vim_syntax" 

""""""""""""""" Javascript syntax """""""""""""""
let g:javascript_enable_domhtmlcss = 1

"""""""""""""" GitGutter """"""""""""""""
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0

"""""""""""""" TAGBAR """"""""""""""""
map <leader>9 :TagbarToggle<CR>


"""""""""""""" UNDO-TREE """"""""""""""""
map <leader>8 :UndotreeToggle<CR>


"""""""""""""" SNIPPETS """"""""""""""""
" Comentarios:
inoremap $$ /*<space><space>*/<esc>hhi
" inoremap $# <CR><CR><CR><space>*/<esc>ki<space>*<esc>ki/*<esc>jA<tab>

inoremap $# /*<CR><CR>/<esc>kA<tab>
    

"""""""""""""" QUICK jumps """"""""""""""""
map <leader>a <leader><leader>s

    
"""""""""""""" ACK """"""""""""""""
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --known-types --ignore-dir=build --ignore-dir=disassembly --ignore-dir=debug --ignore-dir=dist --ignore-dir=nbproject"

" Mapeamos el F1 para cerrar el archivo
map <F1> :q<CR>


" Funciones para Convertir de Hex <-> DEC
command! -nargs=? -range Dec2hex call s:Dec2hex(<line1>, <line2>, '<args>')
function! s:Dec2hex(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    else
      let cmd = 's/\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No decimal number found'
    endtry
  else
    echo printf('%x', a:arg + 0)
  endif
endfunction

command! -nargs=? -range Hex2dec call s:Hex2dec(<line1>, <line2>, '<args>')
function! s:Hex2dec(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V0x\x\+/\=submatch(0)+0/g'
    else
      let cmd = 's/0x\x\+/\=submatch(0)+0/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No hex number starting "0x" found'
    endtry
  else
    echo (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
  endif
endfunction

" Remapeamos el : a ; para tener mas facil acceso
map ; :

" Wildfire (seleccion)
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]
nmap <leader>s <Plug>(wildfire-quick-select)

set colorcolumn=80

" YouCompleteME
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0

" color_coded (para sintax highliting en c, c++, objC)
let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c']


"" Ultisnips
let g:UltiSnipsExpandTrigger= "<c-tab>"
let g:UltiSnipsListSnippets= "<c-s-tab>"

" Cierra el scratch automaticamente al elegir la opcion de YCM
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Splits mas naturales, abre el split a la derecha o abajo
set splitbelow
set splitright
