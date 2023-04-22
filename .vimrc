set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'neoclide/coc.nvim'
  Plugin 'arcticicestudio/nord-vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'powerline/powerline'
  Plugin 'chrisbra/vim-commentary'
  Plugin 'chrisbra/csv.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'eliba2/vim-node-inspect'
  Plugin 'dense-analysis/ale'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'metakirby5/codi.vim'
  Plugin 'hashivim/vim-terraform'
  Plugin 'pangloss/vim-javascript'    " JavaScript support
  Plugin 'leafgarland/typescript-vim' " TypeScript syntax
  Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
  Plugin 'jparise/vim-graphql'        " GraphQL syntax
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

call vundle#end()

let g:coc_global_extensions = ['coc-tsserver']


colorscheme nord
hi Visual term=reverse cterm=reverse guibg=Grey
filetype plugin indent on
" My key mapping
" Handle copy paste from visual/insert mode
" TODO: use system buffer too
" noremap <c-c> y
" noremap <c-v> p
" set paste "Breaks UltiSnips!!!

" Disable annoying beep
set visualbell
set tabstop=4
set shiftwidth=4
set expandtab
set number

nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-j> :bp<cr>
nnoremap <C-k> :bn<cr>
" nnoremap <C-x> :bp|bd # <cr>
" q to close file not window
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
"
" VIM AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#buffer_nr_show = 1

"
"" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
"let g:airline_symbols.colnr = ' ㏇:'
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'
"
"
"" powerline symbols
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' :'
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ' :'
"let g:airline_symbols.maxlinenr = '☰ '
"let g:airline_symbols.dirty='⚡'
"
"
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NERDTree mouse clicke
set mouse=a
let g:NERDTreeMouseMode=3

" Vim Devicons
set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11
" set guifont=BitstreamVeraSansMono_NF:h13
