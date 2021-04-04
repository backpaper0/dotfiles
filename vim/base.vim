" 基本的な設定

set nocompatible
filetype plugin on
filetype indent on

" カーソルキーでの移動禁止
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" " ノーマルモード、ビジュアルモードのときは ; と : を入れ替える
" nnoremap ; :
" nnoremap : ;
" vnoremap ; :
" vnoremap : ;

" " tab入力を空白で置き換える
" set expandtab

" タブの幅
set tabstop=4

" オートインデントのタブ幅
set shiftwidth=4

" 行番号を表示する
set number

" カーソルの位置を表示する
set ruler

" マッチした箇所をハイライト
set hlsearch

" Esc Esc でハイライトをオフにする
nnoremap <Esc><Esc> :nohlsearch<CR>

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

" 挿入モードのときdeleteキーで文字を消せるようにする
set backspace=start,eol,indent

" gradle syntax highlighting
autocmd BufNewFile,BufRead *.gradle set filetype=groovy

" JSONはtxtで扱う（JSONモード的なやつ、使いにくい。。。）
autocmd BufNewFile,BufRead *.json set filetype=txt

" TypeScriptのインデントを2にする
autocmd BufNewFile,BufRead *.ts,*.tsx set tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.ts,*.tsx set expandtab

" ヤンクしたらクリップボードにもコピーする
set clipboard+=unnamed

" UTF-8を使う
set fileencoding=utf-8
set encoding=utf-8

" モードを左下へ表示する
set showmode

" 入力中のコマンドを右下へ表示する
set showcmd

" Leaderをスペースへ割り当てる
let mapleader = "\<Space>"

" 現在のウィンドウを閉じる
nnoremap <silent> <Leader>q :<C-u>close<CR>

" 複数候補の有無で操作を切り替えるのが面倒なので一律 g ctrl + ] にする
nnoremap <C-]> g<C-]>
