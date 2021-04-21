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

" let g:material_style = 'palenight'
" let g:material_italic_comments=1
" let g:material_italic_functions=1
" colorscheme material

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

" let g:sonokai_style = 'atlantis'
" let g:sonokai_enable_italic = 1
" colorscheme sonokai
"autocmd VimEnter * colorscheme sonokai  | highlight link htmlTagName markdownH1
                                      "\ | highlight link htmlTagN markdownH1
                                      "\ | highlight link htmlSpecialTagName markdownH1
                                      "\ | highlight link xmlTagName markdownH1
                                      "\ | highlight link jsxTagName markdownH1
                                      "\ | highlight link htmlArg BlueItalic
                                      "\ | highlight link jsxAttrib BlueItalic"
" autocmd VimEnter * colorscheme dracula  | highlight link htmlTagName DraculaPurpleBold
"                                       \ | highlight link htmlTagN DraculaPurpleBold
"                                       \ | highlight link htmlSpecialTagName DraculaPurpleBold
"                                       \ | highlight link xmlTagName DraculaPurpleBold
"                                       \ | highlight link jsxTagName DraculaPurpleBold
"                                       "\ | highlight link typescriptProp DraculaCyan
"                                       \ | highlight link typescriptMember DraculaGreen
"                                       "\ | highlight link htmlArg BlueItalic
"                                       "\ | highlight link jsxAttrib BlueItalic

" let g:spring_night_high_contrast = 1
let g:spring_night_cterm_italic = 1
colorscheme spring-night

" let g:tokyonight_style = 'storm'
" let g:tokyonight_italic_keywords = 1
" let g:tokyonight_dark_float = 1
" colorscheme tokyonight

" let g:everforest_enable_italic = 1
" colorscheme everforest
" colorscheme omni
" colorscheme aurora
" colorscheme purify
" colorscheme challenger_deep
" colorscheme dracula

" let g:miramare_enable_italic = 1
" colorscheme miramare

" let g:gruvbox_material_enable_bold = 1
" let g:gruvbox_material_enable_italic = 1
" colorscheme gruvbox-material

" colorscheme zephyr

set showtabline=2

""" Lightline config
"let g:airline_theme = 'ayu_mirage'
"let g:lightline = { 'colorscheme': 'material_vim' }
" let g:lightline = {
"   \ 'colorscheme': 'dracula',
"   \ 'active': {
"   \   'left': [ [ 'mode', 'paste' ],
"   \             [ 'fugitive', 'readonly', 'filename', 'cocstatus', 'modified' ] ],
"   \ 'right': [ [ 'lineinfo' ],
"   \            [ 'percent' ],
"   \            [ 'fileencoding' ] ]
"   \ },
"   \ 'tabline': {
"   \   'left': [ [ 'bufferinfo' ],
"   \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
"   \   'right': [ [ 'close' ], ],
"   \ },
"   \ 'component_expand': {
"   \   'buffercurrent': 'lightline#buffer#buffercurrent',
"   \   'bufferbefore': 'lightline#buffer#bufferbefore',
"   \   'bufferafter': 'lightline#buffer#bufferafter',
"   \ },
"   \ 'component_type': {
"   \   'buffercurrent': 'tabsel',
"   \   'bufferbefore': 'raw',
"   \   'bufferafter': 'raw',
"   \ },
"   \ 'component_function': {
" 	\   'cocstatus': 'StatusDiagnostic',
"   \   'bufferinfo': 'lightline#buffer#bufferinfo',
"   \   'fugitive': 'LightlineFugitive',
"   \   'readonly': 'LightlineReadonly',
"   \ },
"   \ 'component': {
"   \   'separator': '',
"   \ },
"   \ 'separator': { 'left': '', 'right': '' },
"   \ 'subseparator': { 'left': '', 'right': '' }
" \ }
" function! LightlineReadonly()
"   return &readonly ? '' : ''
" endfunction
" function! LightlineFugitive()
"   if exists('*FugitiveHead')
"     let branch = FugitiveHead()
"     return branch !=# '' ? ' '.branch : ''
"   endif
"   return ''
" endfunction
" let g:lightline_buffer_logo = ''
" let g:lightline_buffer_readonly_icon = ''
" let g:lightline_buffer_modified_icon = '*'
" let g:lightline_buffer_git_icon = ' '
" let g:lightline_buffer_ellipsis_icon = '..'
" let g:lightline_buffer_expand_left_icon = '◀ '
" let g:lightline_buffer_expand_right_icon = ' ▶'
" let g:lightline_buffer_active_buffer_left_icon = ' '
" let g:lightline_buffer_active_buffer_right_icon = ' '
" let g:lightline_buffer_separator_icon = ''

" " enable devicons, only support utf-8
" " require <https://github.com/ryanoasis/vim-devicons>
" let g:lightline_buffer_enable_devicons = 1

" " lightline-buffer function settings
" let g:lightline_buffer_show_bufnr = 1

" " :help filename-modifiers
" let g:lightline_buffer_fname_mod = ':t'

" " hide buffer list
" let g:lightline_buffer_excludes = ['vimfiler']

" " max file name length
" let g:lightline_buffer_maxflen = 30

" " max file extension length
" let g:lightline_buffer_maxfextlen = 3

" " min file name length
" let g:lightline_buffer_minflen = 16

" " min file extension length
" let g:lightline_buffer_minfextlen = 3

" " reserve length for other component (e.g. info, close)
" let g:lightline_buffer_reservelen = 20

""" barbar.nvim

""" galaxyline
lua <<EOF
local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui'}

local colors = {
  bg = '#282c34',
  line_bg = '#353644',
  fg = '#8FBCBB',
  fg_green = '#65a380',

  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#c678dd',
  blue = '#51afef';
  red = '#ec5f67'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▊ ' end,
    highlight = {colors.blue,colors.line_bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.magenta, i = colors.green,v=colors.blue,[''] = colors.blue,V=colors.blue,
                          c = colors.red,no = colors.magenta,s = colors.orange,S=colors.orange,
                          [''] = colors.orange,ic = colors.yellow,R = colors.purple,Rv = colors.purple,
                          cv = colors.red,ce=colors.red, r = colors.cyan,rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.red,colors.line_bg,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.line_bg},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.line_bg,'bold'}
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {colors.orange,colors.line_bg},
  }
}
gls.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {'#8FBCBB',colors.line_bg,'bold'},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.green,colors.line_bg},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.line_bg},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.line_bg},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {colors.bg,colors.line_bg},
    highlight = {colors.line_bg,colors.line_bg}
  }
}
gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[12] = {
  Space = {
    provider = function () return ' ' end
  }
}
gls.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {colors.bg,colors.line_bg},
    highlight = {colors.fg,colors.line_bg,'bold'},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.blue,colors.line_bg},
    highlight = {colors.fg,colors.line_bg},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {colors.line_bg,colors.line_bg},
    highlight = {colors.cyan,colors.darkblue,'bold'},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.blue,colors.purple},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.purple}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = '',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.fg,colors.purple}
  }
}
EOF

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
