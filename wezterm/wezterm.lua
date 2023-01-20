local wezterm = require 'wezterm'
local mux = wezterm.mux
local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
-- this is called by the mux server when it starts up.
-- It makes a window split top/bottom
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)
return {

  window_background_opacity = 0.97,
  unix_domains = { 
    {name = 'unix' },
  },
  color_scheme = 'cyberpunk',
  -- How many lines of scrollback you want to retain per tab
  scrollback_lines = 5000,
  enable_scroll_bar = true,
  enable_tab_bar = false,
  
  window_decorations = "RESIZE",

  
  tab_bar_style = {
    active_tab_left = wezterm.format {
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#2b2042' } },
      { Text = SOLID_LEFT_ARROW },
    },
    active_tab_right = wezterm.format {
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#2b2042' } },
      { Text = SOLID_RIGHT_ARROW },
    },
    inactive_tab_left = wezterm.format {
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#1b1032' } },
      { Text = SOLID_LEFT_ARROW },
    },
    inactive_tab_right = wezterm.format {
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#1b1032' } },
      { Text = SOLID_RIGHT_ARROW },
    },
  },
  use_fancy_tab_bar = true,
  ------------------------------------------------------------------------
   hyperlink_rules = {
    -- Linkify things that look like URLs and the host has a TLD name.
    -- Compiled-in default. Used if you don't specify any hyperlink_rules.
    {
      regex = '\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b',
      format = '$0',
    },

    -- linkify email addresses
    -- Compiled-in default. Used if you don't specify any hyperlink_rules.
    {
      regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]],
      format = 'mailto:$0',
    },

    -- file:// URI
    -- Compiled-in default. Used if you don't specify any hyperlink_rules.
    {
      regex = [[\bfile://\S*\b]],
      format = '$0',
    },

    -- Linkify things that look like URLs with numeric addresses as hosts.
    -- E.g. http://127.0.0.1:8000 for a local development server,
    -- or http://192.168.1.1 for the web interface of many routers.
    {
      regex = [[\b\w+://(?:[\d]{1,3}\.){3}[\d]{1,3}\S*\b]],
      format = '$0',
    },

    -- Make task numbers clickable
    -- The first matched regex group is captured in $1.
    {
      regex = [[\b[tT](\d+)\b]],
      format = 'https://example.com/tasks/?t=$1',
    },

    -- Make username/project paths clickable. This implies paths like the following are for GitHub.
    -- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
    -- As long as a full URL hyperlink regex exists above this it should not match a full URL to
    -- GitHub or GitLab / BitBucket (i.e. https://gitlab.com/user/project.git is still a whole clickable URL)
    {
      regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
      format = 'https://www.github.com/$1/$3',
    },
  },
  -----------------------------------------------------------------------------------------------------------
   
}
