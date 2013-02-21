call vice#Extend({
    \ 'addons': [
        \ 'github:tpope/vim-fugitive',
        \ 'github:tpope/vim-git',
    \ ],
    \ 'commands': {
        \ 'Gist': ['github:mattn/gist-vim', 'github:mattn/webapi-vim'],
        \ 'Gitv': ['github:gregsexton/gitv'],
    \ },
\ })

" Gitv {{{
    let g:Gitv_WipeAllOnClose = 1
    let g:Gitv_OpenPreviewOnLaunch = 1
    let g:Gitv_DoNotMapCtrlKey = 1
    " set lazyredraw
    " augroup git
    "     au!
    "     au FileType git setl foldlevel=99
    " augroup END
" }}}

" Git commit {{{
    au FileType gitcommit call vice#git#Commit()
    au FileType gitcommit setl textwidth=80
" }}}

cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>
cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>
