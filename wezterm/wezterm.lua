-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night Moon'
config.window_background_opacity = 0.95
config.font_size = 10.0

config.enable_tab_bar = false
window_decorations = "Resize"
-- and finally, return the configuration to wezterm
return config
