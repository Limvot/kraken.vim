" Vim syntax file
" Language:     Kraken
" Maintainer:   Nathan Braswell <miloignis@gmail.com>

syn keyword     krakenKeyword   fun obj def var import if for while return
syn keyword     krakenKeyword   break continue defer

syn match       numeric         display '\<\d\+'
syn match       numeric         display '\<\d\.\d\+f\?'
syn match       cpp_comment     display "//.*$"

syn region      krakenString    start='"' end='"'

hi def link numeric     krakenNumber
hi def link cpp_comment krakenComment

hi def link krakenKeyword   Keyword
hi def link krakenNumber    Number
hi def link krakenString    Constant
hi def link krakenComment   Comment
