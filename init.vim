" ------------------------------------------------
" Include a file from the nvim config directory
" ------------------------------------------------
" https://stackoverflow.com/a/48828172
function! SourceLocal(relativePath)
	let homeDir = expand($HOME)
	let fullPath = homeDir . '/.config/nvim/'. a:relativePath
	execute 'source ' . fullPath
endfunction

" Initialize plugin system
call SourceLocal('plugins.vim')

" Keymappinns
call SourceLocal('keymappings.vim')

" Options
call SourceLocal('options.vim')

" Settings
call SourceLocal('settings.vim')
