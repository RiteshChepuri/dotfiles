local k = require("utils.keys")
local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	font_size = 12,
	font = wezterm.font("JetBrainsMono NF"),
	window_background_opacity = 0.7,
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	color_scheme = "Nucolors",
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	warn_about_missing_glyphs = false,
	enable_tab_bar = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	enable_wayland = false,
	default_prog = { "tmux_home" },
	automatically_reload_config = true,

	keys = {
		k.cmd_key("o", k.multiple_actions(":GoToFile")), -- Open go_to_file prompt
		k.cmd_key("O", k.multiple_actions("nvim .")), -- Open vim netrw
		k.alt_key("E", k.multiple_actions("lf")), -- Open lf terminal file browser
		k.alt_key("f", k.multiple_actions("nf")), -- Open fzf prompt with nvim
		k.alt_key("w", k.multiple_actions(":wq")), -- Open lf terminal file browser
		k.alt_key("Q", k.multiple_actions(":q!")), -- Open lf terminal file browser
		k.alt_key("q", k.multiple_actions("exit")), -- Open lf terminal file browser
		k.cmd_to_tmux_prefix("`", "n"), -- Next window
		k.cmd_to_tmux_prefix("i", "c"), -- Open new tmux window
		k.cmd_to_tmux_prefix("=", "%"), -- Split window vertically
		k.cmd_to_tmux_prefix("-", "-"), -- Split window horizontally
		k.cmd_to_tmux_prefix("g", "g"), -- Lazygit binding
		k.cmd_to_tmux_prefix("p", "T"), -- Open sesh(tmux session manager)
		k.cmd_to_tmux_prefix("u", "u"), -- Open tmux fzf url
		k.cmd_to_tmux_prefix("Tab", ")"), -- Next tmux session
		k.cmd_to_tmux_prefix("[", "p"), -- Previous tmux window
		k.cmd_to_tmux_prefix("]", "n"), -- Next tmux window
		k.cmd_to_tmux_prefix("y", "y"), -- Split tmux pane for 25%
		k.alt_to_tmux_prefix("1", "1"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("2", "2"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("3", "3"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("4", "4"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("5", "5"), -- Nav to tmux window no 1
	},
}

return config
