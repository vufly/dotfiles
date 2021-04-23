vim.api.nvim_exec([[
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
]], false)

-- vim.cmd('highlight IndentBlanklineChar1 guibg=#4E5F00 guifg=#788898 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineChar2 guibg=#005A00 guifg=#788898 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineChar3 guibg=#53005C guifg=#788898 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineChar4 guibg=#004B4F guifg=#788898 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineSpaceChar1 guibg=#4E5F00 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineSpaceChar2 guibg=#005A00 gui=nocombine')
-- vim.cmd('highlight IndentBlanklineSpaceChar3 guibg=#53005C gui=nocombine')
-- vim.cmd('highlight IndentBlanklineSpaceChar4 guibg=#004B4F gui=nocombine')

vim.g.indent_blankline_char = '▏'
vim.g.indent_blankline_show_end_of_line = true
-- vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_filetype_exclude = {'help','dashboard','dashpreview','NvimTree','coc-explorer','startify','vista','sagahover'}
vim.g.indent_blankline_buftype_exclude = {'terminal', 'nofile'}

--vim.g.indent_blankline_show_first_indent_level = false
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.g.indent_blankline_char_highlight_list = {'IndentBlanklineChar1', 'IndentBlanklineChar2', 'IndentBlanklineChar3', 'IndentBlanklineChar4'}
vim.g.indent_blankline_space_char_highlight_list = {'IndentBlanklineSpaceChar1', 'IndentBlanklineSpaceChar2', 'IndentBlanklineSpaceChar3', 'IndentBlanklineSpaceChar4'}
