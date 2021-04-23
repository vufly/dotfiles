local M = require('../../utils/map')

-- local function map_telescope(keys, builtin_function)
--   M.nmap('<leader>'..keys, ":lua require('telescope.builtin')."..builtin_function.."()<cr>")
-- end

-- map_telescope('b', 'buffers')
-- map_telescope('i', 'find_files')
-- map_telescope('s', 'live_grep')
-- map_telescope('c', 'commands')

-- map_telescope('fh', 'help_tags')
-- map_telescope('fb', 'file_browser')
-- map_telescope('fq', 'quickfix')
-- map_telescope('fvo', 'vim_options')
-- map_telescope('fts', 'treesitter')
-- map_telescope('fkm', 'keymaps')
-- map_telescope('fcs', 'colorscheme')

-- map_telescope('gac', 'git_commits')
-- map_telescope('gc', 'git_bcommits')
-- map_telescope('gb', 'git_branches')
-- map_telescope('gs', 'git_status')

-- map_telescope('lt', 'builtin')

-- map_telescope('/', 'current_buffer_fuzzy_find')
-- require('telescope').load_extension('frecency')
require('telescope').setup{
    defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "top",
    prompt_prefix = " ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_defaults = {
      -- TODO add builtin options.
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

M.nmap('<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
M.nmap('<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
M.nmap('<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
M.nmap('<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
