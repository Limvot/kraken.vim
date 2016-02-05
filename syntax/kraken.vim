" Vim syntax file
" Language:     Kraken
" Maintainer:   Nathan Braswell <miloignis@gmail.com>

syn keyword     krakenKeyword       fun obj def var import return
syn keyword     krakenConditional   if else for while
syn keyword     krakenKeyword       break continue defer
syn keyword     krakenType          int float char void double bool

syn match       krakenOperator      display '+\|-\|/\|*\|&\||\|!\|=\|\[\|\]\|::\|\.\|<\|>\|,'

syn match       numeric         display '\<\d\+'
syn match       numeric         display '\<\d\.\d\+f\?'
syn match       cpp_comment     display "//.*$"
syn region      c_comment       start="/\*" end="\*/"
"syn region      templated_region    start='<' end='>'
syn match       type_body       ": *\**[a-zA-Z][a-zA-Z0-9_]*"
"syn match       krakenIdentifier    "[a-zA-Z][a-zA-Z0-9_]*"
"syn region      templated_region    start='<' end='>'
"syn region      templated_region    start="<" end="> *\**" contains=comma
"syn region      functionCall    start="[a-zA-Z][a-zA-Z0-9_]*(" end=")" transparent
syn match      functionCall    "[a-zA-Z][a-zA-Z0-9_]*(" contains=funcIdentifier,funcPerens transparent
syn match      funcIdentifier  "[a-zA-Z][a-zA-Z0-9_]*"  contained
syn match      funcPerens  '(' contained
syn match      funcPerens  ')'


syn keyword     krakenBool      true false

syn region      krakenString    start='"' end='"'
syn region      krakenCharacter start="'" end="'"

hi def link numeric     krakenNumber
hi def link cpp_comment krakenComment
hi def link c_comment krakenComment
hi def link type_body       krakenType
"hi def link templated_region       krakenType

hi def link krakenOperator  Operator

"hi def link krakenIdentifier    Identifier
hi def link funcPerens      Operator
hi def link functionCall    Identifier

hi def link funcIdentifier  Identifier
hi def link krakenBool      Boolean
hi def link krakenConditional   Conditional
hi def link krakenKeyword   Keyword
hi def link krakenType      Type
hi def link krakenNumber    Number
hi def link krakenString    String
hi def link krakenCharacter Character
hi def link krakenComment   Comment
