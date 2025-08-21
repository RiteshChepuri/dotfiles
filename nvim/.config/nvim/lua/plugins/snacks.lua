return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		picker = {
			enabled = true,
			win = {
				input = {
					keys = {
						["<c-j>"] = { "list_down", mode = { "i", "n" } },
						["<c-k>"] = { "list_up", mode = { "i", "n" } },
						["<Tab>"] = { "list_down", mode = { "i", "n" } },
						["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
						["<c-n>"] = { "select_and_next", mode = { "i", "n" } },
					},
				},
				list = {
					keys = {
						["<c-j>"] = { "list_down", mode = { "n", "x" } },
						["<Tab>"] = "list_down",
						["<c-k>"] = { "list_up", mode = { "n", "x" } },
						["<S-Tab>"] = "list_up",
						["<c-n>"] = { "select_and_next", mode = { "i", "n" } },
					},
				},
			},
		},
		scope = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		quickfile = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		words = { enabled = false },
		dashboard = { enabled = false },
		input = { enabled = false },
		styles = {
			notification = {},
		},
	},
	keys = {
		-- File Explorer (tree view)
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		-- Find Buffers
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		-- Find Files
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		-- Live Grep
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		-- Keymaps
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Keymaps",
		},
		-- Commands
		{
			"<leader>fc",
			function()
				Snacks.picker.commands()
			end,
			desc = "Commands",
		},
		-- Diagnostics
		{
			"<leader>fd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		-- Search the word under cursor
		{
			"<leader>fs",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Visual selection or word",
			mode = { "n", "x" },
		},
		-- Git Files
		{
			"<leader>gf",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Find Git Files",
		},
		-- Recent Files
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},
		-- Undo tree
		{
			"<leader>u",
			function()
				Snacks.picker.undo()
			end,
			desc = "Undo History",
		},
		-- Icons
		{
			"<leader>fi",
			function()
				Snacks.picker.icons()
			end,
			desc = "Icons",
		},
	},
}
