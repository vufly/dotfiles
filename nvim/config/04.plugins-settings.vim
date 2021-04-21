""" vim-rooter
let g:rooter_patterns = ['.git/', '_darcs/', '.hg/', '.bzr/', '.svn/', './Makefile']

""" Nerdtree
" let NERDTreeHijackNetrw = 0
" let NERDTreeShowHidden=1
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
"" Open Nerdtree on start
" autocmd VimEnter *
             "\   if !argc()
             "\ |   Startify
             "" \ |   NERDTree
             "\ | NvimTreeOpen
             ""\ |   wincmd w
             "\ | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Startify
let g:startify_session_persistence = 1

""" Devicons
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

""" Nvim tree
"let g:nvim_tree_side = 'right' | 'left' "left by default
"let g:nvim_tree_width = 40 "30 by default
"let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
" let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
"let g:nvim_tree_auto_ignore_ft = ['startify', 'dashboard'] "empty by default, don't auto open tree on specific filetypes.
"let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let gnvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1
    \ }
" nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>n ::NvimTreeToggle<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

" autocmd BufEnter * if expand('%') =~ 'NvimTree' && bufname('%') !~ 'NvimTree' && winnr('$') > 1 |
    " \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
    " \ buffer# | execute "normal! \<c-w>\<c-w>" | :blast | endif

" au BufEnter * if expand('%') =~ 'NvimTree' && bufname('%') !~ 'NvimTree' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | endif


" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

""" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

let g:gitblame_date_format = '%r'

""" indent blankline
let g:indent_blankline_char = '▏'
let g:indent_blankline_show_end_of_line = v:true
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_filetype_exclude = ['help','dashboard','dashpreview','NvimTree','coc-explorer','startify','vista','sagahover']
" let g:indent_blankline_show_first_indent_level = v:false
let g:indent_blankline_show_trailing_blankline_indent = v:false

" highlight IndentBlanklineChar1 guifg=#FFFF40 gui=nocombine
" highlight IndentBlanklineChar2 guifg=#7FFF7F gui=nocombine
" highlight IndentBlanklineChar3 guifg=#FF7FFF gui=nocombine
" highlight IndentBlanklineChar4 guifg=#4FECEC gui=nocombine
highlight IndentBlanklineChar1 guibg=#4E5F00 guifg=#788898 gui=nocombine
highlight IndentBlanklineChar2 guibg=#005A00 guifg=#788898 gui=nocombine
highlight IndentBlanklineChar3 guibg=#53005C guifg=#788898 gui=nocombine
highlight IndentBlanklineChar4 guibg=#004B4F guifg=#788898 gui=nocombine
highlight IndentBlanklineSpaceChar1 guibg=#4E5F00 gui=nocombine
highlight IndentBlanklineSpaceChar2 guibg=#005A00 gui=nocombine
highlight IndentBlanklineSpaceChar3 guibg=#53005C gui=nocombine
highlight IndentBlanklineSpaceChar4 guibg=#004B4F gui=nocombine

let g:indent_blankline_char_highlight_list = ['IndentBlanklineChar1', 'IndentBlanklineChar2', 'IndentBlanklineChar3', 'IndentBlanklineChar4']
let g:indent_blankline_space_char_highlight_list = ['IndentBlanklineSpaceChar1', 'IndentBlanklineSpaceChar2', 'IndentBlanklineSpaceChar3', 'IndentBlanklineSpaceChar4']

""" Nvim spectre
nnoremap <leader>S :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw viw:lua require('spectre').open_visual()<CR>
" vnoremap <leader>s :lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>

lua <<EOF
require('spectre').setup({
  color_devicons = true,
  line_sep_start = '',
  result_padding = '├─ ',
  line_sep       = '',
  is_open_target_win = false --open file on opener window
})
EOF