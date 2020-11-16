""" Vim-Plug
:call plug#begin('~/.config/nvim')

""" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
"Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'leafgarland/typescript-vim'

""" Status line
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'

""" Colorschemes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'challenger-deep-theme/vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'rhysd/vim-color-spring-night'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'franbach/miramare'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vufly/dracula-vim', { 'as': 'dracula' }

""" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tpope/vim-sleuth'
Plug 'conormcd/matchindent.vim'

""" Productivity
Plug 'wakatime/vim-wakatime'

""" Ultility
Plug 'djoshea/vim-autoread'
Plug 'airblade/vim-rooter'
Plug 'machakann/vim-sandwich'
Plug 'psliwka/vim-smoothie'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdcommenter'
"Plug 'liuchengxu/vista.vim'

""" Finding things
Plug 'google/vim-searchindex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'vufly/nerdtree-ripgrep-plugin'
Plug 'liuchengxu/vim-clap'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' } " Build the extra binary if cargo exists on your system.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' } " The bang version will try to download the prebuilt binary if cargo does not exist.
Plug 'coreyja/fzf.devicon.vim'

""" Git
Plug 'tpope/vim-fugitive'

call plug#end()


"" Modify colorscheme
augroup MyColors
  autocmd!
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
augroup END
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

autocmd BufEnter *.{js,jsx,ts,tsx,vue} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx,vue} :syntax sync clear

""" Vim setting
let mapleader = "\<Space>"
map <leader>h :w\|:noh<cr>
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10
syntax on

set encoding=UTF-8
set mouse=a

" Ignore case sensitive when search
set ignorecase
set incsearch
" Hightlight all the search matches
set hlsearch
set inccommand=nosplit

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab

set relativenumber
set nu rnu
set cursorline

"set listchars=space:.,tab:>-
set list
set listchars=
"set listchars+=tab:▓░
"set listchars+=tab:░\ 
set listchars+=tab:˲\ 
"set listchars+=eol:¬
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:•

set nowrap
set title

" Always split new windows right
set splitright
set splitbelow
set emoji
set foldlevel=0
" Hide mode in the bottom e.g., -- INSERT --
set noshowmode
" Enable clipboard to copy from system
set clipboard+=unnamedplus

set sessionoptions-=blank
let loaded_netrw = 0

" open help in vertical split
autocmd FileType help wincmd L

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

command! HiCheck exe 'hi '.synIDattr(synstack(line('.'), col('.'))[-1], 'name')

""" Plugin setting
syntax enable
set background=dark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "set t_ZH=^[[3m
  "set t_ZR=^[[23m
  set termguicolors
endif

lua require'colorizer'.setup()

map <leader><C-h> :exe 'hi '.synIDattr(synstack(line('.'), col('.'))[-1], 'name')<CR>
map <C-b> :NERDTreeToggle<CR>
map <leader>F :call NERDTreeRipGrepDirectory()<CR>
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
    autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd bufenter * let $titlestring = getcwd()
" Nice window title
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%{expand('%:t')}
    set titlestring+=\ -\ %{matchstr(getcwd(),'[^\\\/]*$')}  " working directory
endif
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:startify_session_persistence = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '

"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
let g:indentLine_char = ''
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  guibg=#303448 ctermbg=59
"hi IndentGuidesEven guibg=#373c52 ctermbg=60

"tmux italic
"set t_ZH=^[[3m
"set t_ZR=^[[23m

set rtp+=/usr/local/opt/fzf
"map <C-p> :FZF<CR>
nnoremap <silent> <C-p> :call fzf#vim#files('.',{'options':'--prompt ""','dir':FindRootDirectory()})<CR>
nnoremap <silent> <leader>b :Buffers<CR>
map <leader>/ :Rg<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
"let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let $FZF_DEFAULT_OPTS=' --layout=reverse  --margin=1,2'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let g:fzf_preview_window = 'down:50%'
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(40)
  let width = float2nr(200)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'StatusLine'],
\ 'hl':      ['fg', 'WarningMsg'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'Normal'],
\ 'hl+':     ['fg', 'WarningMsg'],
\ 'info':    ['fg', 'PreProc'],
\ 'gutter':  ['bg', 'StatusLine'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }

let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type': 'files',     'header': ['   MRU']            },
\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]

let g:clap_layout = { 'relative': 'editor' }

""" Coc settings
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

nmap <space>e :CocCommand explorer<CR>

