local wezterm = require("wezterm")
local M = {}
local k = require("utils.keys")

function M.apply(config)
	config.keys = {
		k.cmd_key("o", k.multiple_actions(":GoToFile")), -- Open go_to_file prompt
		k.alt_key("e", k.multiple_actions("yazi")), -- Open yazi terminal file browser
		k.alt_to_tmux_prefix("i", "c"), -- Open new tmux window
		k.alt_to_tmux_prefix("=", "%"), -- Split window vertically
		k.alt_to_tmux_prefix("-", "-"), -- Split window horizontally
		k.alt_to_tmux_prefix("g", "g"), -- Lazygit binding
		k.alt_to_tmux_prefix("p", "T"), -- Open sesh (tmux session manager)
		k.alt_to_tmux_prefix("u", "u"), -- Open tmux fzf url
		k.alt_to_tmux_prefix("Tab", ")"), -- Next tmux session
		k.alt_to_tmux_prefix("[", "p"), -- Previous tmux window
		k.alt_to_tmux_prefix("]", "n"), -- Next tmux window
		k.alt_to_tmux_prefix("y", "y"), -- Split tmux pane for 25%
		k.alt_to_tmux_prefix("l", "Tab"), -- Open tmux copy plugin
		k.alt_to_tmux_prefix("1", "1"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("2", "2"), -- Nav to tmux window no 2
		k.alt_to_tmux_prefix("3", "3"), -- Nav to tmux window no 3
		k.alt_to_tmux_prefix("4", "4"), -- Nav to tmux window no 4
		k.alt_to_tmux_prefix("5", "5"), -- Nav to tmux window no 5
	}
end

return M
