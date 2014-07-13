
" NeoBundle start

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" NeoBundle end

set nocompatible
filetype plugin on

" カーソルキーでの移動禁止
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set tabstop=4

" 行番号を表示する
set number

" マッチした箇所をハイライト
set hlsearch

" インクリメンタルサーチ
set incsearch

" シンタックスハイライト
syntax on

" ステータスラインを常に表示
set laststatus=2

" 検索のとき大文字小文字を区別しない
set ignorecase

" ただし検索文字列が大文字を含む場合は大文字小文字を区別する
set smartcase
