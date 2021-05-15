" ==================
" Plugin Settings
" ==================

"===== Lightline =====
let g:lightline = {
            \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
                \   'right': [ 
                    \			   [ 'clock' ],
                    \              [ 'percent' ],
                    \              [ 'fileformat', 'fileencoding', 'filetype' ],
                    \			   [ 'lineinfo' ]]
                    \ },
                    \ 'component_function': {
                        \   'gitbranch': 'FugitiveHead'
                        \ },
                        \ 'component': {
                            \	'clock': '%{strftime("%H:%M")}'
                            \ },
                            \}

"===== CODI ===== (coding playground)
let g:codi#interpreters = {
            \ 'php': {
                \ 'bin': '/home/nathabonfim59/.config/composer/vendor/bin/psysh',
                \ 'prompt': '^\(>>>\|\.\.\.\) ',
                \ },
                \ }

"===== Vim Emmet =====
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall " Enable just for html/css files

"===== Markdown Image Paste =====
" Configuration to image from clipaste
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'


"===== Git Gutter =====
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'


"===== COC =====
" Coc tab completion
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"===== Barbar =====
let bufferline = get(g:, 'bufferline', {})

"" Enable/disable icons
let bufferline.icons = 'both'
" Custom colors in icons
let bufferline.icon_custom_colors = v:true
" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'

" Tabs highlight
