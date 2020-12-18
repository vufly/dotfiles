""" Nerdtree
" let NERDTreeHijackNetrw = 0
" let NERDTreeShowHidden=1
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
" let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
"" Open Nerdtree on start
" autocmd VimEnter *
"             \   if !argc()
"             \ |   Startify
"             " \ |   NERDTree
"             \ | LuaTreeOpen
"             \ |   wincmd w
"             \ | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Startify
let g:startify_session_persistence = 1

""" Devicons
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

""" Nvim tree
" let g:lua_tree_side = 'right' | 'left' "left by default
" let g:lua_tree_width = 40 "30 by default
" let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:lua_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:lua_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
" let g:lua_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:lua_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:lua_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
" let g:lua_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:lua_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:lua_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:lua_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:lua_tree_allow_resize = 1 "0 by default, will not resize the tree when opening a file
