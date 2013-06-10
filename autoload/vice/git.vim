" Simplified git merge
func! vice#git#merge()
    set laststatus=2

    " Close other window
    wincmd h
    close

    " Read current file in target branch during a conflict
    Gread :2

    " Close other buffers on exit
    au QuitPre <buffer> only

    " Erase undo
    let old_ul = &ul
    set ul=-1
    exe "normal a \<BS>\<Esc>"
    let &ul = old_ul
    unlet old_ul

    " Set no modified to prevent confirm on exit
    set nomodified
    normal gg]c
endf
