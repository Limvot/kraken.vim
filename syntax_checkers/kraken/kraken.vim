" Vim syntastic plugin
" Language:     Kraken
" Maintainer:   Nathan Braswell <miloignis@gmail.com>

if exists("g:loaded_syntastic_kraken_kraken_checker")
    finish
endif
let g:loaded_syntastic_kraken_kraken_checker = 1


" If you don't have kraken in your home directory, set this in your vim config
" to something else
if !exists("g:kraken_grammer_location")
    let g:kraken_grammer_location = '~/kraken/krakenGrammer.kgm'
endif

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_kraken_kraken_GetLocList() dict
    let makeprg = self.makeprgBuild({
                \ 'args_before': '--parse-only',
                \ 'args': g:kraken_grammer_location })

    let errorformat = '%E%f:%l'

    return SyntasticMake({
                \ 'makeprg': makeprg,
                \ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
            \'filetype': 'kraken',
            \'name': 'kraken'})

let &cpo = s:save_cpo
unlet s:save_cpo

