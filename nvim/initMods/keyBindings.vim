map <space>f :Ranger<CR>.
" Toggle
" nnoremap <silent> <C-o> :NERDTreeToggle<CR>
map <C-o> :NERDTreeToggle %<CR>

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>



nnoremap <space><PageUp> :bnext<CR> 
nnoremap <space><PageDown> :bprevious<CR> 
nnoremap <C-PageUp> :tabnext<CR> 
nnoremap <C-PageDown> :tabprevious<CR> 
nnoremap <space>h :Startify<CR> 
nnoremap <space>n :tabnew <bar>terminal<CR>
nnoremap <space>t :tabnew<CR> 
nnoremap <space>b :Buffers<CR> 
nnoremap <space>o :!xdg-open % &<CR>

" to toggle the terminal without losing its state 
nnoremap <C-z> :ToggleTerminal<CR>
" these keybinding are special for fuzzy plguin
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

map <F5> :Bc<CR>
map <F3> :tabprevious<CR>
map <F4> :tabnext<CR>

" keybindings coc
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
  else
    inoremap <silent><expr> <c-@> coc#refresh()
  endif

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ?
    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

let g:coc_snippet_next = '<tab>'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" for pyhton error 
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:python3_host_prog = '/usr/bin/python3.10' " -------- Set python 3 provider


" nerdcommenter
let g:NERDCreateDefaultMappings = 1
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
