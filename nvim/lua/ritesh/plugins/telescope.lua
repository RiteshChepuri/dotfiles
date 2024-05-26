return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "natecraddock/telescope-zf-native.nvim" },
		{ "AckslD/nvim-neoclip.lua" },
		{ "nvim-lua/popup.nvim" },
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("zf-native")
		telescope.load_extension("neoclip")
		telescope.load_extension("noice")
	end,
	opts = {
		defaults = {
			file_ignore_patterns = { ".git/", "node_modules" },
			layout_config = {
				prompt_position = "top",
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
				initial_mode = "insert",
			},
			commands = {
				prompt_prefix = " ",
				initial_mode = "insert",
			},
			command_history = {
				prompt_prefix = " ",
				initial_mode = "insert",
			},
			git_files = {
				prompt_prefix = "󰊢 ",
				show_untracked = true,
				initial_mode = "insert",
			},
			find_files = {
				prompt_prefix = " ",
				find_command = { "fd", "-H" },
				initial_mode = "insert",
			},
			live_grep = {
				prompt_prefix = "󰱽 ",
				initial_mode = "insert",
			},
			grep_string = {
				prompt_prefix = "󰱽 ",
				initial_mode = "insert",
			},
			keymaps = {
				prompt_prefix = "󰌌 ",
				initial_mode = "insert",
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
	},
	keys = function()
		return {}
	end,
}
