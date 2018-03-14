call vice#Extend({
    \ 'addons': [
        \ 'github:tpope/vim-fugitive',
        \ 'github:tpope/vim-git',
        \ 'github:tpope/vim-rhubarb',
        \ 'github:zeekay/vim-git-hax',
        \ 'github:mattn/webapi-vim',
        \ 'github:zeekay/github-issues.vim',
    \],
    \ 'commands': {
        \ 'GHDashboard': ['github:junegunn/vim-github-dashboard'],
        \ 'Gist':        ['github:mattn/gist-vim'],
        \ 'Gitv':        ['github:gregsexton/gitv'],
    \ },
\ })

let g:Gitv_WipeAllOnClose      = 1
let g:Gitv_OpenPreviewOnLaunch = 1
let g:Gitv_DoNotMapCtrlKey     = 1

let g:gissues_lazy_load = 1
let g:gissues_async_omni = 1

let g:github_dashboard         = {
    \ 'username': 'zeekay',
    \ 'password': $GITHUB_TOKEN,
    \ 'statusline': 0,
    \ 'position': 'top',
\ }

cabbrev git  <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git'  : 'git')<CR>
cabbrev gitv <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gitv' : 'gitv')<CR>
cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>

cabbrev gb <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gbrowse' : 'gb')<CR>
cabbrev gc <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gcommit' : 'gc')<CR>
cabbrev gd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gdiff'   : 'gd')<CR>
cabbrev ge <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gedit'   : 'ge')<CR>
cabbrev gl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Glog'    : 'gl')<CR>
cabbrev gs <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gstatus' : 'gs')<CR>

nnoremap <leader>gb :Gbrowse<cr>
nnoremap <leader>gc :silent! Gcommit -a<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gl :silent! Glog<cr>:redraw!<cr>
nnoremap <leader>gs :Gstatus<cr>

au BufNewFile,BufRead .gitignore setl filetype=gitignore
au FileType gitignore set commentstring=#\ %s
