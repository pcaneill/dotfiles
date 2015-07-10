" Git commit message
let git_diff_spawn_mode=2
au BufNewFile,BufRead *.git/config,*/.git/config,.gitconfig setf dosini

" HTML & CSS
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
