" Vim syntastic plugin
" Language:     Kraken
" Maintainer:   Nathan Braswell <miloignis@gmail.com>

if exists("g:loaded_syntastic_kraken_filetype")
    finish
endif
let g:loaded_syntastic_kraken_filetype = 1

let s:save_cpo = &cpo
set cpo&vim


" Let tab completion for the 'SyntasticInfo' command work
" for Kraken
if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'kraken')
else
    let g:syntastic_extra_filetypes = ['kraken']
endif

let &cpo = s:save_cpo
unlet s:save_cpo

