" ==================
" Plugin Settings
" ==================

"===== Lightline =====
let g:lightline = {
    \'active': {
        \'left': [
            \[ 'mode', 'paste' ],
            \[ 'gitbranch', 'readonly', 'filename', 'modified' ]
        \],
        \'right': [ 
            \[ 'clock' ],
            \[ 'percent' ],
            \[ 'fileformat', 'fileencoding', 'filetype' ],
            \[ 'lineinfo' ],
            \[ 'cocstatus' ]]
    \},
    \'component_function': {
        \'gitbranch': 'FugitiveHead',
        \'cocstatus': 'coc#status'
    \},
    \'component': {
        \'clock': '%{strftime("%H:%M")}'
    \},
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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


"===== Bufferline =====

set termguicolors 
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Enable/disable icons
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

"
let g:dashboard_custom_header =<< trim END
  _______________                                                                          
 |[]            |                                                                          
 |  __________  |        ███╗   ██╗ █████╗ ████████╗██╗  ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗
 |  | natha- |  |        ████╗  ██║██╔══██╗╚══██╔══╝██║  ██║██╔══██╗██║   ██║██║████╗ ████║
 |  | nael   |  |        ██╔██╗ ██║███████║   ██║   ███████║███████║██║   ██║██║██╔████╔██║
 |  |________|  |        ██║╚██╗██║██╔══██║   ██║   ██╔══██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║
 |   ________   |        ██║ ╚████║██║  ██║   ██║   ██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║
 |   [ [ ]  ]   |        ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
 \___[_[_]__]___|                                                                          
END

" Initializes the WhichKey plugin
lua << EOF
  require("which-key").setup {}
EOF


" Initializes the NerdTreePlugin
lua << EOF
  require("nvim-tree").setup {}
EOF


" Telescope configuration
lua << EOF
require('telescope').setup {
    vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        },
    file_ignore_patterns = {},
    path_display = { shorten = 5 },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, 
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            },
        pickers = {
            find_files = {
                find_command = { "fd", "--type=file", "--hidden", "--smart-case" },
                },
            live_grep = {
                --@usage don't include the filename in the search results
                only_sort_text = true,
                },
            },   }
        }

require('telescope').load_extension('fzf')
EOF
