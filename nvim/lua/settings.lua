local indent = 2

vim.o.encoding = 'UTF-8'

-- Enable mouse mode
vim.o.mouse = 'a'

-- Ignore case sensitive when search
vim.o.ignorecase = true
vim.o.incsearch = true

-- Highlight all the search matches
vim.o.hlsearch = true
vim.o.inccommand = 'nosplit'

vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.

-- True color support
vim.o.termguicolors = true
vim.o.t_Co = "256" -- Support 256 colors

-- Indent settings
vim.bo.tabstop = indent
vim.bo.softtabstop = indent
vim.bo.shiftwidth = indent
vim.bo.smartindent = true
vim.bo.autoindent = true
vim.bo.expandtab = true

-- Hybrid line numbers
vim.o.relativenumber = true --relative for other lines
vim.o.nu = true -- absolute for current line
vim.o.rnu = true -- absolute for current line

-- Highlight current line
vim.o.cursorline = true

-- Do not wrap text
vim.wo.wrap = false

-- Set terminal title
vim.o.title = true

-- New split window
vim.o.splitbelow = true
vim.o.splitright = true
vim.cmd('autocmd FileType help wincmd L')
vim.cmd('set sessionoptions-=blank')

-- Enable emoji
vim.o.emoji = true

vim.wo.foldlevel = 0

-- Hide mode in the bottom e.g., -- INSERT --
vim.o.showmode = false
-- Always show tab line
vim.o.showtabline = 2

-- Enable clipboard to copy from system
vim.cmd('set clipboard+=unnamedplus')

-- Shorter update time
vim.o.updatetime = 300

vim.o.history = 200

-- vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

vim.api.nvim_command([[
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
]])

vim.api.nvim_command([[
  " set list
  set listchars=
  "set listchars+=tab:▓░
  "set listchars+=tab:░\ 
  set listchars+=tab:˲\ 
  "set listchars+=eol:¬
  set listchars+=eol:↩
  set listchars+=trail:·
  set listchars+=extends:»
  set listchars+=precedes:«
  set listchars+=nbsp:•
]])
