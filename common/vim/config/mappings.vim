"""""""""""""""""""""""""""""""""""""""
"           General mappings          "
"""""""""""""""""""""""""""""""""""""""
inoremap <c-u> <esc>viwg~ea
nnoremap H 1\|
nnoremap L g$


"""""""""""""""""""""""""""""""""""""""
"           Leader mappings           "
"""""""""""""""""""""""""""""""""""""""
let mapleader = ","

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>evm :vsplit ~/.vim/config/mappings.vim<cr>
nnoremap <leader>evs :vsplit ~/.vim/config/settings.vim<cr>
nnoremap <leader>evv :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>

