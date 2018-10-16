" prefix
nmap <Space> [unite]

" Space + g -> :Unite file_rec/git
nnoremap <silent> [unite]g :<C-u>Unite<Space>file_rec/git<CR>
" Space + f -> :Unite file_rec/async
nnoremap <silent> [unite]f :<C-u>Unite<Space>file_rec<CR>
" Space + b -> :Unite buffer
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
" Space + o -> :Unite outline
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
" Space + t -> :Unite tweetvim
nnoremap <silent> [unite]t :<C-u>Unite<Space>tweetvim<CR>
