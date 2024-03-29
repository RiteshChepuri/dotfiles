return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "natecraddock/telescope-zf-native.nvim" },
		{ "AckslD/nvim-neoclip.lua" },
		{ "ThePrimeagen/harpoon" },
		{ "nvim-lua/popup.nvim" },
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("zf-native")
		telescope.load_extension("neoclip")
		telescope.load_extension("harpoon")
	end,
	opts = {
		defaults = {
			file_ignore_patterns = { ".git/", "node_modules" },
			layout_config = {
				preview_width = 0.6,
				prompt_position = "bottom",
			},
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
					["<Tab>"] = "move_selection_next",
				},
			},
			path_display = { "smart" },
			prompt_position = "top",
			prompt_prefix = " ",
			selection_caret = " ",
			sorting_strategy = "ascending",
		},
		pickers = {
			buffers = {
				prompt_prefix = "󰸩 ",
			},
			commands = {
				prompt_prefix = " ",
				layout_config = {
					height = 0.63,
					width = 0.78,
				},
			},
			command_history = {
				prompt_prefix = " ",
				layout_config = {
					height = 0.63,
					width = 0.58,
				},
			},
			git_files = {
				prompt_prefix = "󰊢 ",
				show_untracked = true,
			},
			find_files = {
				prompt_prefix = " ",
				find_command = { "fd", "-H" },
			},
			live_grep = {
				prompt_prefix = "󰱽 ",
			},
			grep_string = {
				prompt_prefix = "󰱽 ",
			},
			keymaps = {
				prompt_prefix = "󰌌 ",
			},
		},
	},
	keys = function()
		return {}
	end,
}
