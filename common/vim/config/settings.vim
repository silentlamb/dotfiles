"""""""""""""""""""""""""""""""""""
"  Settings                       "
"""""""""""""""""""""""""""""""""""
colorscheme skittles_dark
filetype plugin indent on
" let g:vimwiki_list = [{'path': '~/Documents/VimWiki/raw', 'path_html': '~/Documents/VimWiki/html'}]
" let g:clang_library_path = '/usr/lib/llvm-3.4/lib'
let Tlist_Show_One_File=1
let Tlist_Exit_Only_Window=1
let Tlist_Use_Right_Window=1
set laststatus=2
set nocompatible
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

" Disable tags for a now
" set tags+=./tags;/
" set tags+=~/.vim/ctags/android_java
" set tags+=~/.vim/ctags/android_ndk

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
