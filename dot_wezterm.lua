local wezterm = require 'wezterm'
local config = {}
local act = wezterm.action

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.color_scheme = 'duskfox'
config.use_fancy_tab_bar = false
config.tab_max_width = 32
config.window_decorations = 'RESIZE'
config.window_close_confirmation = 'AlwaysPrompt'

config.font = wezterm.font 'RecMonoFly Nerd Font'
config.font_size = 12.1
config.bold_brightens_ansi_colors = false

config.default_prog = { 'pwsh.exe' }

return config
