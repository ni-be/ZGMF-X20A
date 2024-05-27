-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- For example, changing the color scheme:
config.color_scheme = 'Kanagawa (Gogh)'
config.window_background_opacity = 1
config.font_size = 12
config.font = wezterm.font('Cascadia Code NF', { weight = 'Regular' })
config.window_padding = {
  left = '0.2cell',
  right = '0.2cell',
  top = '0.2cell',
  bottom = '0.21cell',
}
config.show_update_window = false

config.enable_tab_bar = false
--config.window_decorations = "NONE"
config.window_padding = {
  left = '0.1cell',
  right = '0.1cell',
  top = '0.1cell',
  bottom = '0.1cell',
}
config.window_close_confirmation = 'NeverPrompt'
-- and finally, return the configuration to wezterm
return config
