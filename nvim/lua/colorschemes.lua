vim.g.spring_night_high_contrast = 0
vim.g.spring_night_cterm_italic = 1
vim.cmd('color spring-night')

-- vim.g.material_style = 'palenight'
-- vim.g.material_italic_comments=1
-- vim.g.material_italic_functions=1
-- vim.cmd('colorscheme material')

-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_enable_italic = true
-- vim.cmd('colorscheme sonokai')

-- vim.g.tokyonight_style = 'storm'
-- vim.g.tokyonight_italic_keywords = true
-- vim.g.tokyonight_dark_float = true
-- vim.cmd('colorscheme tokyonight')

-- vim.g.everforest_enable_italic = true
-- vim.cmd('colorscheme everforest')

-- vim.cmd('colorscheme omni')

-- vim.cmd('colorscheme aurora')

-- vim.cmd('colorscheme purify')

-- vim.cmd('colorscheme challenger_deep')

-- vim.g.miramare_enable_italic = true
-- vim.cmd('colorscheme miramare')

-- vim.cmd('colorscheme zephyr')

vim.api.nvim_command([[
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
]])