"===== VIM =====
" Remap the leader to space
nnoremap <Space> <Nop>
map <Space> <Leader>
nmap <Leader>c :bw<CR> "Close current buffer

" Remove hightliht
nmap <Leader>h :noh<CR>

"===== Git gutter =====
" Jump between git chunks
nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)


"===== Vim Fugitive =====
" Vim fugive configuration
nnoremap <Leader>gb :Gblame<CR>  " git blame

"===== COC VIM =====
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
" Coc Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Better go to definition
nmap <silent> gd <Plug>(coc-definition)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"= Coc-explorer
" Open coc-explorer with the same shortcut <Ctrl + Alt + b>
nmap <C-M-b> :CocCommand explorer<CR>

"===== Vim treesiter =====
" Toggle filetree
nmap <Leader>e :NvimTreeToggle<CR>

"===== Telescope =====
nmap <Leader>t :Telescope<CR>
nmap <Leader>f :Telescope find_files<CR>
