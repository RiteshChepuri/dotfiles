local wezterm = require("wezterm")
local M = {}
local k = require("utils.keys")

function M.apply(config)
	config.keys = {
		k.cmd_key("o", k.multiple_actions(":GoToFile")), -- Open go_to_file prompt
		k.alt_key("E", k.multiple_actions("lf")), -- Open lf terminal file browser
		k.alt_key("f", k.multiple_actions("nf")), -- Open fzf prompt with nvim
		k.alt_key("w", k.multiple_actions(":wq")), -- Open lf terminal file browser
		k.alt_key("Q", k.multiple_actions(":q!")), -- Open lf terminal file browser
		k.alt_key("q", k.multiple_actions("exit")), -- Open lf terminal file browser
		k.alt_to_tmux_prefix("`", "n"), -- Next window
		k.alt_to_tmux_prefix("i", "c"), -- Open new tmux window
		k.alt_to_tmux_prefix("=", "%"), -- Split window vertically
		k.alt_to_tmux_prefix("-", "-"), -- Split window horizontally
		k.alt_to_tmux_prefix("g", "g"), -- Lazygit binding
		k.alt_to_tmux_prefix("p", "T"), -- Open sesh(tmux session manager)
		k.alt_to_tmux_prefix("u", "u"), -- Open tmux fzf url
		k.alt_to_tmux_prefix("Tab", ")"), -- Next tmux session
		k.alt_to_tmux_prefix("[", "p"), -- Previous tmux window
		k.alt_to_tmux_prefix("]", "n"), -- Next tmux window
		k.alt_to_tmux_prefix("y", "y"), -- Split tmux pane for 25%
		k.alt_to_tmux_prefix("1", "1"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("2", "2"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("3", "3"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("4", "4"), -- Nav to tmux window no 1
		k.alt_to_tmux_prefix("5", "5"), -- Nav to tmux window no 1
	}
end

return M
