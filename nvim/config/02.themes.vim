"" Modify colorscheme
"augroup MyColors
  "autocmd!
  "autocmd ColorScheme * highlight jsExport gui=italic cterm=italic
  "autocmd ColorScheme material highlight SignColumn ctermfg=14 ctermbg=242 guifg=#a6accd guibg=#3d435d
  "autocmd ColorScheme material highlight jsExportDefault gui=italic cterm=italic guifg=#89ddff
  "autocmd ColorScheme material highlight LineNr guifg=cleared guibg=#3d435c
  "autocmd ColorScheme material highlight CursorLineNr gui=bold ctermfg=11 guifg=#676e95 guibg=#1f212e
  "autocmd ColorScheme material highlight jsThis gui=italic cterm=italic
  "autocmd ColorScheme sonokai highlight link htmlTagName markdownH1
  "autocmd ColorScheme gruvbox-material highlight link htmlArg YellowBold
  "autocmd ColorScheme gruvbox-material highlight link jsxAttrib YellowBold
  "autocmd ColorScheme gruvbox-material highlight link typescriptGlobal PurpleBold
  "autocmd ColorScheme gruvbox-material highlight link typescriptIdentifier PurpleItalic
"augroup END
"autocmd VimEnter * highlight link typescriptProp AquaBold

"let g:material_theme_style = 'palenight'
"let g:material_terminal_italics = 1
"colorscheme material

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"let g:sonokai_style = 'atlantis'
"let g:sonokai_enable_italic = 1
"autocmd VimEnter * colorscheme sonokai  | highlight link htmlTagName markdownH1
                                      "\ | highlight link htmlTagN markdownH1
                                      "\ | highlight link htmlSpecialTagName markdownH1
                                      "\ | highlight link xmlTagName markdownH1
                                      "\ | highlight link jsxTagName markdownH1
                                      "\ | highlight link htmlArg BlueItalic
                                      "\ | highlight link jsxAttrib BlueItalic"
autocmd VimEnter * colorscheme dracula  | highlight link htmlTagName DraculaPurpleBold
                                      \ | highlight link htmlTagN DraculaPurpleBold
                                      \ | highlight link htmlSpecialTagName DraculaPurpleBold
                                      \ | highlight link xmlTagName DraculaPurpleBold
                                      \ | highlight link jsxTagName DraculaPurpleBold
                                      "\ | highlight link typescriptProp DraculaCyan
                                      \ | highlight link typescriptMember DraculaGreen
                                      "\ | highlight link htmlArg BlueItalic
                                      "\ | highlight link jsxAttrib BlueItalic

"let g:spring_night_high_contrast = 1
"colorscheme spring-night
"let g:forest_night_enable_italic = 1
"colorscheme forest-night

"let g:gruvbox_material_enable_italic = 1
"colorscheme gruvbox-material

"colorscheme purify
"colorscheme challenger_deep
colorscheme dracula

"let g:miramare_enable_italic = 1
"colorscheme miramare
"autocmd VimEnter * colorscheme spring-night

"let g:gruvbox_material_enable_bold = 1
"let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_enable_italic = 1
"colorscheme gruvbox-material

set showtabline=2

""" Lightline config
"let g:airline_theme = 'ayu_mirage'
"let g:lightline = { 'colorscheme': 'material_vim' }
let g:lightline = {
  \ 'colorscheme': 'dracula',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'readonly', 'filename', 'cocstatus', 'modified' ] ],
  \ 'right': [ [ 'lineinfo' ],
  \            [ 'percent' ],
  \            [ 'fileencoding' ] ]
  \ },
  \ 'tabline': {
  \   'left': [ [ 'bufferinfo' ],
  \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
  \   'right': [ [ 'close' ], ],
  \ },
  \ 'component_expand': {
  \   'buffercurrent': 'lightline#buffer#buffercurrent',
  \   'bufferbefore': 'lightline#buffer#bufferbefore',
  \   'bufferafter': 'lightline#buffer#bufferafter',
  \ },
  \ 'component_type': {
  \   'buffercurrent': 'tabsel',
  \   'bufferbefore': 'raw',
  \   'bufferafter': 'raw',
  \ },
  \ 'component_function': {
	\   'cocstatus': 'StatusDiagnostic',
  \   'bufferinfo': 'lightline#buffer#bufferinfo',
  \   'fugitive': 'LightlineFugitive',
  \   'readonly': 'LightlineReadonly',
  \ },
  \ 'component': {
  \   'separator': '',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
\ }
function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction
function! LightlineFugitive()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction
let g:lightline_buffer_logo = ''
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '*'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ' '
let g:lightline_buffer_active_buffer_right_icon = ' '
let g:lightline_buffer_separator_icon = ''

" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1

" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'

" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']

" max file name length
let g:lightline_buffer_maxflen = 30

" max file extension length
let g:lightline_buffer_maxfextlen = 3

" min file name length
let g:lightline_buffer_minflen = 16

" min file extension length
let g:lightline_buffer_minfextlen = 3

" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20

syntax enable
set background=dark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "set t_ZH=^[[3m
  "set t_ZR=^[[23m
  set termguicolors
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%{expand('%:t')}
    set titlestring+=\ -\ %{matchstr(getcwd(),'[^\\\/]*$')}  " working directory
endif
