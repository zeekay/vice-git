call vice#Extend({
    \ 'addons': [
        \ 'github:tpope/vim-fugitive',
        \ 'github:tpope/vim-git',
        \ 'github:zeekay/vim-git-hax',
    \],
    \ 'commands': {
        \ 'Gist': ['github:mattn/gist-vim', 'github:mattn/webapi-vim'],
        \ 'Gitv': ['github:gregsexton/gitv'],
    \ },
\ })

cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>
cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>
cabbrev gitv <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gitv' : 'gitv')<CR>

cabbrev gb <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gbrowse' : 'gb')<CR>
cabbrev gc <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gcommit' : 'gc')<CR>
cabbrev gd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gdiff' : 'gd')<CR>
cabbrev ge <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gedit' : 'ge')<CR>
cabbrev gl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Glog' : 'gl')<CR>
cabbrev gs <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gstatus' : 'gs')<CR>

nnoremap <leader>gb :Gbrowse<cr>
nnoremap <leader>gc :silent! Gcommit -a<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gl :silent! Glog<cr>:redraw!<cr>
nnoremap <leader>gs :Gstatus<cr>