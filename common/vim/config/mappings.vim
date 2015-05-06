"           General mappings          "
"""""""""""""""""""""""""""""""""""""""
inoremap <c-u> <esc>viwg~ea
nnoremap H 1\|
nnoremap <c-Left> 1\|
nnoremap L g$
nnoremap <c-Right> g$
noremap <f2> <esc>:NERDTreeToggle<cr>
noremap <f5> <esc>:TlistToggle<cr>
noremap <silent> <f9> :call VimCommanderToggle()<cr>

"""""""""""""""""""""""""""""""""""""""
"           Leader mappings           "
"""""""""""""""""""""""""""""""""""""""
let mapleader = ","

nnoremap <leader>a :A<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>evm :vsplit ~/.vim/config/mappings.vim<cr>
nnoremap <leader>evs :vsplit ~/.vim/config/settings.vim<cr>
nnoremap <leader>evv :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>

nnoremap <leader>e :e **/
nnoremap <leader>g :exec ":vimgrep /".input("grep what? ")."/ **/*.h **/*.c **/*.cpp" \| cope<CR>
nnoremap <leader>l :ls<CR>:b<Space>
