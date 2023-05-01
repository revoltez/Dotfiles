let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver']
let g:coc_markdown_disabled_languages = ['javascript']
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
"make rust autoformat whenever i save	
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

let g:webdevicons_enable_airline_tabline = 1

""always add th color scheme right after you ste the plug in
if (has("termguicolors"))
set termguicolors
endif
set background=dark
syntax enable

colorscheme tokyonight
"remove the default background color
":hi Normal guibg=NONE ctermbg=NONE

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


" vim startify
"
let g:startify_left_padding =3
let g:startify_center =55
highlight StartifyHeader  ctermfg=50
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
		  \ { 'type': 'sessions',  'header': ['   ']       },
          \ { 'type': 'files',     'header': ['   ']            },
          \ ]
if exists("g:neovide")
 set guifont=Source\ Code\ Pro:h10
endif

"  let g:startify_header = exists('g:startify_custom_header')
"          \ ? s:set_custom_section(startify#pad(g:startify_custom_header))
"          \ : (exists('*strwidth') ? startify#pad(startify#fortune#cowsay()) : [])
let g:startify_custom_header =[
\ '															   ',
\ '												███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
\ '												████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
\ '												██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
\ '												██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
\ '												██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
\ '												╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
\ '															   ',
\ '															   ',
\]

"let g:startify_custom_header =[
"\ '															   ',
"\ '												',
"\ '												',
"\ '												',
"\ '												',
"\ '												',
"\ '												',
"\ '															   ',
"\ '															   ',
"\]
