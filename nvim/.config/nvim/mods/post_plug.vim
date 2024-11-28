let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver']
let g:coc_markdown_disabled_languages = ['javascript']
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
"make rust autoformat whenever i save	
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

let g:webdevicons_enable_airline_tabline = 1

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" this will run prettier whenever you leave insertmode 
let g:prettier#autoformat_require_pragma = 0

autocmd BufWritePre *.svelte,*.js,*.css,*.jsx,*.html,*.mjs,*.ts,*.tsx,*.json,*.graphql,*.md,*.yaml, PrettierAsync

let g:syntastic_svelte_checkers = ['javascript/eslint', 'html/htmlhint']

lua require('neoscroll').setup()


let g:lightline = {
      \ 'colorscheme': 'selenized_black',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly','absolutepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

