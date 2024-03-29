return {
	-- snippets
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		dependencies = {
			{ "saadparwaiz1/cmp_luasnip", lazy = true }, -- luasnip completion source for nvim-cmp
			{
				"rafamadriz/friendly-snippets",
				lazy = true,
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},
		},
	},
	-- completion engine
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter", -- load cmp on InsertEnter
		-- these dependencies will only be loaded when cmp loads
		-- dependencies are always lazy-loaded unless specified otherwise
		dependencies = {
			-- Autocompletion plugin
			-- Completion Sources --
			{ "hrsh7th/cmp-nvim-lsp", lazy = true }, -- nvim-cmp source for neovim builtin LSP client
			{ "hrsh7th/cmp-path", lazy = true }, -- nvim-cmp source for path
			{ "hrsh7th/cmp-buffer", lazy = true }, -- nvim-cmp source for buffer words
			{ "hrsh7th/cmp-nvim-lua", lazy = true }, -- nvim-cmp source for nvim lua
			{ "hrsh7th/cmp-emoji", lazy = true }, -- nvim-cmp source for emoji
			{ "hrsh7th/cmp-cmdline", lazy = true }, --nvim-cmp source for vim's cmdline.
		},
		opts = function()
			local has_words_before = function()
				local line, col = unpack(vim.api.nvim_win_get_cursor(0))
				return col ~= 0
					and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
			end

			local cmp = require("cmp")
			local luasnip = require("luasnip")

			return {
				snippet = {
					expand = function(args)
						-- For `luasnip` user.
						luasnip.lsp_expand(args.body)
					end,
				},
				-- window = {
				--     completion = { border = diagnostics_options.float.border },
				--     documentation = { border = diagnostics_options.float.border },
				-- },
				formatting = {
					format = function(entry, vim_item)
						-- Source
						vim_item.menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Lua]",
							path = "[Path]",
							emoji = "[Emoji]",
							neorg = "[Neorg]",
							spell = "[Spell]",
						})[entry.source.name]
						return vim_item
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete({ TriggerOnly = "triggerOnly" }),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-e>"] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
					["<ESC>"] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "nvim_lua" },
					{ name = "emoji" },
					{ name = "neorg" },
				}),
			}
		end,
		config = function(_, opts)
			local cmp = require("cmp")
			cmp.setup(opts)

			-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "path" },
					{ name = "cmdline" },
				},
			})
		end,
	},
}
