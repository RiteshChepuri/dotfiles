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
					"clangd", -- c
					"basedpyright", -- python
					"intelephense", -- php
					"bashls", -- bash
					"jdtls", -- java
					"jsonls", -- json
					"lua_ls", -- lua
					"superhtml", -- html
					"html", -- html
					"cssls", -- css
					"css_variables", -- css
					"cssmodules_ls", -- css
					"marksman", -- markdown
					"emmet_ls", -- js,jsx,ts,tsx,html,css,scss,sass
					"tailwindcss", -- tailwindcss
					"ts_ls", -- javascript, typescript
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true
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

				keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- next diagnostics
			end

			-- configure clangd server for c language
			lspconfig.clangd.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure basedpyright server for python
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure intelephense server for php
			lspconfig.intelephense.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure bash server for php
			lspconfig.bashls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure jdtls server for java
			lspconfig.jdtls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure jsonls server for json
			lspconfig.jsonls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure marksman server for markdown
			lspconfig.marksman.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure super-html server for html
			lspconfig.superhtml.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "html" },
			})

			-- configure html server for html
			lspconfig.html.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "html" },
			})

			-- configure css server for css
			lspconfig.cssls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "css", "scss", "sass" },
			})

			-- configure css_variables server for css
			lspconfig.css_variables.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "css", "scss", "sass" },
			})

			-- configure cssmodules_ls server for css
			lspconfig.cssmodules_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = { "css", "scss", "sass" },
			})

			-- configure luals server for lua language
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = { -- custom settings for lua
					Lua = {
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim", "Snacks" },
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

			-- configure tailwindcss server for tailwind
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})

			-- configure emmet language server
			lspconfig.emmet_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = {
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"javascript.jsx",
					"typescript.tsx",
					"html",
					"css",
					"scss",
					"sass",
				},
			})

			-- configure typescript server for typescript
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				filetypes = {
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"javascript.jsx",
					"typescript.tsx",
				},
			})
		end,
	},
}
