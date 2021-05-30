"===== VIM =====
" Remap the leader to space
nnoremap <Space> <Nop>
map <Space> <Leader>
nmap <Leader>c :bw<CR> "Close current buffer

" Remove hightliht
nmap <Leader>n :noh<CR>

" Show the tabs and spaces in the file
nmap <Leader>s :set invlist<CR>

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

"===== Vim treesiter =====
" Toggle filetree
nmap <Leader>e :NvimTreeToggle<CR>

"===== Telescope =====
nmap <Leader>t :Telescope<CR>
nmap <Leader>f :Telescope find_files<CR>
" Live grep search Requires 'ripgrep' package
nmap <Leader>l :Telescope live_grep<CR> 

" Fuzzy find the open buffers
nmap <Leader>b :Telescope buffers<CR>

"===== Bufferline =====
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
