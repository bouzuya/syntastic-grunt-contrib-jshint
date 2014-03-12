syntastic-grunt-contrib-jshint
==============================================================================

A [syntastic][] syntax-checker for JavaScript using [grunt-contrib-jshint][].

[syntastic]: https://github.com/scrooloose/syntastic
[grunt-contrib-jshint]: https://github.com/gruntjs/grunt-contrib-jshint

Example
------------------------------------------------------------------------------

### Gruntfile.js

    grunt.initConfig({
      jshint: {
        options: {
          reporter: './node_modules/jshint/src/reporters/default'
        }
      }
    };
   
### .vimrc

    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'bouzuya/syntastic-grunt-contrib-jshint'
    
    let g:syntastic_mode_map = {
          \ 'mode': 'active',
          \ 'active_filetypes': ['javascript'],
          \ 'passive_filetypes': []
          \ }
    let g:syntastic_javascript_checkers = ['grunt_contrib_jshint']

License
------------------------------------------------------------------------------

WTFPL

