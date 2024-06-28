return {
	{
		"folke/trouble.nvim",
		lazy = false,
		opts = {},
		cmd = "Trouble",
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>TT",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Troublhg)",
			},
			-- TODO: reasearch about symbols and lsp toggle keymaps below
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>td",
				"<cmd>Trouble todo<cr>",
				desc = "To Do List (Trouble)",
			},
			{
				"t]",
				"<cmd>Trouble diagnostics next <cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"t[",
				"<cmd>Trouble diagnostics prev<cr>",
				desc = "Diagnostics (Trouble)",
			},
		},
	},
}
