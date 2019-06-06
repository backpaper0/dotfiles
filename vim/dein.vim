if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
 
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
 
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')
  "call dein#add('Shougo/vimshell.vim')
  call dein#add('Shougo/vimproc.vim', { 'build' : 'make' })
  "call dein#add('derekwyatt/vim-scala')
  call dein#add('Shougo/vimfiler')
  "call dein#add('thinca/vim-quickrun')
  call dein#add('Shougo/unite-outline')
  call dein#add('othree/html5.vim')
  call dein#add('hail2u/vim-css3-syntax')
  "call dein#add('hokaccha/vim-html5validator')
  "call dein#add('rust-lang/rust.vim')
  call dein#add('ElmCast/elm-vim')
  call dein#add('mechatroner/rainbow_csv')
  call dein#add('katono/rogue.vim')
 
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

