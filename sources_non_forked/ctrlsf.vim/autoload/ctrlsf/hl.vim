" ============================================================================
" Description: An ack/ag/pt/rg powered code search and view tool.
" Author: Ye Ding <dygvirus@gmail.com>
" Licence: Vim licence
" Version: 1.8.3
" ============================================================================

" HighlightMatch()
"
func! ctrlsf#hl#HighlightMatch(...) abort
    " default: ctrlsfMatch
    let hlgroup = a:0 > 0 ? a:1 : 'ctrlsfMatch'

    if !exists('b:current_syntax') || b:current_syntax !~# 'ctrlsf'
        return -1
    endif

    let pattern = ctrlsf#opt#GetOpt("_vimhlregex")
    call ctrlsf#log#Debug("HighlightRegex: %s", pattern)

    silent! call matchdelete(w:ctrlsf_match_hlid)
    let w:ctrlsf_match_hlid = matchadd(hlgroup, pattern)
endf

" HighlightSelectedLine()
"
func! ctrlsf#hl#HighlightSelectedLine() abort
    " Clear previous highlight
    silent! call matchdelete(w:ctrlsf_line_hlid)

    let pattern = '\%' . line('.') . 'l.*'
    let w:ctrlsf_line_hlid = matchadd('ctrlsfSelectedLine', pattern, -1)
endf

" ClearSelectedLine()
"
func! ctrlsf#hl#ClearSelectedLine() abort
    silent! call matchdelete(w:ctrlsf_line_hlid)
endf
