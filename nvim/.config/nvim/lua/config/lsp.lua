vim.diagnostic.config({
	-- virtual_lines = true,
	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		-- Unset 'formatexpr'
		vim.bo[args.buf].formatexpr = nil
		-- Unset 'omnifunc'
		vim.bo[args.buf].omnifunc = nil
		-- Unmap K
		vim.keymap.del("n", "K", { buffer = args.buf })
	end,
})

vim.api.nvim_create_autocmd(
	"LspAttach",
	{ --  Use LspAttach autocommand to only map the following keys after the language server attaches to the current buffer
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

			-- from https://neovim.io/doc/user/lsp.html#lsp-defaults documentation
			-- GLOBAL DEFAULTS
			-- grr gra grn gri grt i_CTRL-S an in These GLOBAL keymaps are created unconditionally when Nvim starts:
			-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
			-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
			-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
			-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
			-- "grt" is mapped in Normal mode to vim.lsp.buf.type_definition()
			-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
			-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()
			-- "an" and "in" are mapped in Visual mode to outer and inner incremental selections, respectively, using vim.lsp.buf.selection_range()

			-- Buffer local mappings.
			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local opts = { buffer = ev.buf }

			-- rename (default is grn)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

			-- code actions (default is gra)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

			-- reference (default is grr)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

			-- implementation (default is gri)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

			-- definition (default is grt)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

			-- Show documentation for whats under cursor
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({
					border = "rounded",
				})
			end, opts)

			-- -- type definition
			-- vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
			--
			-- vim.keymap.set("n", "<leader>f", function()
			-- 	vim.lsp.buf.format({ async = true })
			-- end, opts)

			-- Open the diagnostic under the cursor in a float window
			vim.keymap.set("n", "<leader>d", function()
				vim.diagnostic.open_float({
					border = "rounded",
				})
			end, opts)
		end,
	}
)
