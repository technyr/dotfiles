local wezterm = require 'wezterm'
local config = {}

-- If using the newer wezterm version, use the config builder to catch typos
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- ==========================================
-- Status Bar Configuration (Clock)
-- ==========================================
wezterm.on('update-status', function(window, pane)
  local time = wezterm.strftime '%H:%M:%S'
  window:set_right_status(wezterm.format {
    { Foreground = { Color = '#ffffff' } },
    { Text = ' ' .. time .. ' ' },
  })
end)

-- ==========================================
-- Look, Feel & Transparency Settings
-- ==========================================
config.window_background_opacity = 0.5 -- 50% Transparent background
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 12.0
config.enable_kitty_graphics = true
config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = 'TITLE | RESIZE'

-- ==========================================
-- Tab Bar Settings
-- ==========================================
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 16
config.enable_tab_bar = false
config.status_update_interval = 1000

-- ==========================================
-- Color Palette
-- ==========================================
config.colors = {
  foreground = '#ffffff',
}

-- ==========================================
-- Keyboard Shortcuts
-- ==========================================
config.keys = {
  { key = 'q',   mods = 'CTRL',       action = wezterm.action.QuitApplication },
  { key = 't',   mods = 'CTRL',       action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w',   mods = 'CTRL',       action = wezterm.action.CloseCurrentTab { confirm = false } },
  { key = 'Tab', mods = 'CTRL',       action = wezterm.action.ActivateTabRelative(1) },
  { key = 'Tab', mods = 'CTRL|SHIFT', action = wezterm.action.ActivateTabRelative(-1) },
}

return config
