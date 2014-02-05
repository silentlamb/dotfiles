"""""""""""""""""""""""""""""""""""
"  Settings                       "
"""""""""""""""""""""""""""""""""""
colorscheme skittles_dark
filetype plugin indent on
let g:Powerline_symbols = 'fancy'
let Tlist_Show_One_File=1
let Tlist_Exit_Only_Window=1
let Tlist_Use_Right_Window=1
set laststatus=2
set number numberwidth=4
set t_Co=256
syntax on

"""""""""""""""""""""""""""""""""""
"  Auto commands                  "
"""""""""""""""""""""""""""""""""""
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" GVim
if has("gui_running")
  set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
endif

