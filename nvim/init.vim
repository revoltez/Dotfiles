source $HOME/.config/nvim/initMods/generalSettings.vim " myPlugins
source $HOME/.config/nvim/initMods/pluginLoader.vim " myPlugins
source $HOME/.config/nvim/initMods/keyBindings.vim " myPlugins


"make rust autoformat whenever i save	
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

let g:webdevicons_enable_airline_tabline = 1

"always add th color scheme right after you ste the plug in
if (has("termguicolors"))
set termguicolors
endif
set background=dark
syntax enable

colorscheme nightfly

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" this will run prettier whenever you leave insertmode 
let g:prettier#autoformat_require_pragma = 0
autocmd BufWritePre *.svelte,*.js,*.jsx,*.html,*.mjs,*.ts,*.tsx,*.json,*.graphql,*.md,*.yaml, PrettierAsync

let g:syntastic_svelte_checkers = ['javascript/eslint', 'html/htmlhint']

lua require('neoscroll').setup()


let g:lightline = {
      \ 'colorscheme': 'selenized_black',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
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
