return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
			"nvim-treesitter/nvim-treesitter-context",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = {
					enable = true,
					enable_rename = true,
					enable_close = true,
					filetypes = { "html", "xml", "tsx", "javascript", "typescript" },
				},
				sync_install = true,
				auto_install = true,
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"gitignore",
					"c",
					"fish",
					"java",
					"php",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
