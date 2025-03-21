return {
	"saghen/blink.cmp",
	-- dependencies = "rafamadriz/friendly-snippets",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
	version = "*",
	opts = {
		keymap = {
			preset = "none",
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide", "fallback" },
			["<CR>"] = { "accept", "fallback" },

			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },

			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				path = {
					module = "blink.cmp.sources.path",
					score_offset = 3,
					fallbacks = { "buffer" },
					opts = {
						trailing_slash = true,
						label_trailing_slash = true,
						get_cwd = function(context)
							return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
						end,
						show_hidden_files_by_default = true,
					},
				},
			},
		},
		completion = {
			list = { selection = { preselect = false, auto_insert = true } },
			menu = {
				enabled = true,
				min_width = 15,
				max_height = 10,
				border = "single",
				winblend = 0,
				winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
				-- Keep the cursor X lines away from the top/bottom of the window
				scrolloff = 2,
				-- Note that the gutter will be disabled when border ~= 'none'
				scrollbar = true,
				-- Which directions to show the window,
				-- falling back to the next direction when there's not enough space
				direction_priority = { "s", "n" },

				-- Whether to automatically show the window when new completion items are available
				auto_show = true,

				-- Screen coordinates of the command line
				cmdline_position = function()
					if vim.g.ui_cmdline_pos ~= nil then
						local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
						return { pos[1] - 1, pos[2] }
					end
					local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
					return { vim.o.lines - height, 0 }
				end,
			},
			documentation = { window = { border = "single" } },
		},
		signature = { window = { border = "single" } },
	},
	opts_extend = { "sources.default" },
}
