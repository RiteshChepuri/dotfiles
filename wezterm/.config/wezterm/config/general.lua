local wezterm = require("wezterm")
local M = {}

function M.apply(config)
	config.font = wezterm.font("JetBrainsMono")
	config.font_size = 10.0
	config.color_scheme = "Solarized (dark) (terminal.sexy)"
	config.window_background_opacity = 0.75
	config.adjust_window_size_when_changing_font_size = false
	config.debug_key_events = false
	config.warn_about_missing_glyphs = false
	config.enable_tab_bar = false
	config.native_macos_fullscreen_mode = false
	config.window_close_confirmation = "NeverPrompt"
	config.window_decorations = "RESIZE"
	config.enable_wayland = false
	config.automatically_reload_config = true
	config.disable_default_key_bindings = true
	-- config.default_prog = { "tmux_home" }
end

return M
