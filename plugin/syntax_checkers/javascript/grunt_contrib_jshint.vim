"============================================================================
"File:        grunt_contrib_jshint.vim
"Description: Javascript syntax checker - using grunt-contrib-jshint
"Maintainer:  bouzuya <bouzuya at gmail dot com>
"License:     WTFPL
"============================================================================

if exists('g:loaded_syntastic_javascript_grunt_contrib_jshint_checker')
  finish
endif
let g:loaded_syntastic_javascript_grunt_contrib_jshint_checker = 1

let s:save_cpoptions = &cpoptions
set cpoptions&vim

function! SyntaxCheckers_javascript_grunt_contrib_jshint_IsAvailable() dict
  return executable(self.getExec())
endfunction

function! SyntaxCheckers_javascript_grunt_contrib_jshint_GetLocList() dict
  return SyntasticMake({
        \ 'makeprg': 'grunt jshint --no-color',
        \ 'errorformat': '%f: line %l\, col %v\, %m,%-G%.%#' })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
      \ 'filetype': 'javascript',
      \ 'name': 'grunt_contrib_jshint',
      \ 'exec': 'grunt' })

let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

