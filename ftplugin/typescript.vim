set tabstop=2
set shiftwidth=2
set expandtab

function! RunCurrentTest()
    echo "Running test"
endfunction
   " ?^\s*.[it|test].[\(|\.].
   " :call searchpos('^\s*.[it|test].[\(|\.].', 'bp')<cr>
   " let g:test_description = matchstr(getline('.'), "[\"|'].*.[\"|']");
   " echo g:test_description

function! GetThisTest()
  " Returns the test in hich the cursor is, or last test executed
  echo "Hi"
endfunction


if expand('%:t')[-8:-1] == '.test.ts'
    echo "Typescript Test file"
    nnoremap <F12>:call RunCurrentTest()<cr>
endif
