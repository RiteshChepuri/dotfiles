return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "AckslD/nvim-neoclip.lua" },
		{ "nvim-lua/popup.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
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

	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
		telescope.load_extension("neoclip")
		telescope.load_extension("ui-select")

		-- Telescope
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
		vim.keymap.set("n", "<leader>fp", "<cmd>Telescope neoclip<cr>", {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fc", builtin.commands, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, {})
		vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
	end,
}
