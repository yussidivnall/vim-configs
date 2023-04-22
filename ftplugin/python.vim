echo "Loading python utils"
let g:ale_python_flake8_options = '--max-line-length=88'


function! RunPytest()
    !python -m pytest
endfunction

function! RunAllOpenedPytests()
    echo tests
endfunction

function! RunLastPytest()
    let l:thisfile=expand("%:t")
    if ( l:thisfile =~ "^test_" )
        echom "setting default test file" . expand("%") 
        let $LASTTEST = expand("%")
        !python -m pytest $LASTTEST
    else
        echom "running test file " . $LASTTEST
        !python -m pytest $LASTTEST
    endif
endfunction

let g:python3_host_prog = '/home/uri/.pyenv/versions/py3nvim/bin/python'

" nnoremap <F7> : echo "hello" <CR>
" nnoremap <F7> : call RunPytest() <CR>
nnoremap <F7> : call RunLastPytest() <CR>
nnoremap <F8> : call RunAllOpenedPytests() <CR>
