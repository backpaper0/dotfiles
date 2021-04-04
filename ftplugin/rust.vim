" https://github.com/rust-lang/rust.vim
nnoremap <silent> <Leader>cr :<C-u>Crun<CR>
nnoremap <silent> <Leader>cc :<C-u>Ccheck<CR>
nnoremap <silent> <Leader>ct :<C-u>Ctest<CR>
nnoremap <silent> <Leader>rr :<C-u>RustRun<CR>
nnoremap <silent> <Leader>rt :<C-u>RustTest<CR>

" https://crates.io/crates/rusty-tags
setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!if [ -f ./Cargo.toml ]; then; rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&; fi" | redraw!

