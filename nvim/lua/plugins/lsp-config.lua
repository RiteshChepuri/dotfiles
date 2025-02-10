return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"emmet_ls",
					"tailwindcss",
					"ts_ls",
					"cssls",
					"clangd",
					"pyright",
					"phpactor",
					"bashls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
			local lspconfig = require("lspconfig")
			local keymap = vim.keymap
			local opts = { noremap = true, silent = true }

			local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end

			local on_attach = function(client, buffer)
				opts.desc = "Show documentation for what is under cursor"
				keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

				opts.desc = "See available code actions"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

				opts.desc = "Smart rename"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

				keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- previous diagnostics

				keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- rename
			end

			-- configure emmet language server
			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
			})

			-- configure typescript server for typescript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure css server for css
			lspconfig.cssls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure tailwindcss server
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure clangd server for c language
			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure pyright server for python
			lspconfig.pyright.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure phpactor server for php
			lspconfig.phpactor.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				root_dir = function(fname)
					return vim.loop.cwd()
				end,
			})

			-- configure bash server for php
			lspconfig.bashls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				root_dir = function(fname)
					return vim.loop.cwd()
				end,
			})

			-- configure luals server for lua language
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = { -- custom settings for lua
					Lua = {
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							-- make language server aware of runtime files
							library = {
								[vim.fn.expand("$VIMRUNTIME/lua")] = true,
								[vim.fn.stdpath("config") .. "/lua"] = true,
							},
						},
					},
				},
			})
		end,
	},
}
