" Benchmark vim's redrawing speed
" Usage: time gvim -X -u NONE -U NONE -f -S test-redraw-speed.vim <FILENAME>
let i = 0
while i < 2000
  1
  redraw
  $
  redraw
  let i = i + 1
endwhile
qa!
