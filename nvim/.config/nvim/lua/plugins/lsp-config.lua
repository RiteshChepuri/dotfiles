return {
	{
		"neovim/nvim-lspconfig",
	},
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- language servers
					"lua_ls",
					"ts_ls",
					"marksman",
					"html",
					"cssls",
					"tailwindcss",
					"pyright",
					"clangd",
					-- formatter
					"stylua",
					"prettier",
					"prettierd",
					"rustfmt",
					"beautysh",
					"clang-format",
					"isort",
					"black",
				},
			})
		end,
	},
}
