return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "" },
				change = { text = "" },
				delete = { text = "" },
			},
			signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
			numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
			linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
			word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
			watch_gitdir = {
				follow_files = true,
			},
			current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
				delay = 1000,
				ignore_whitespace = true,
				virt_text_priority = 100,
				use_focus = true,
			},
			current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
			preview_config = {
				border = "single",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end
				map("n", "g[", function()
					if vim.wo.diff then
						vim.cmd.normal({ "g[", bang = true })
					else
						gitsigns.nav_hunk("prev")
					end
				end)

				map("n", "g]", function()
					if vim.wo.diff then
						vim.cmd.normal({ "g]", bang = true })
					else
						gitsigns.nav_hunk("next")
					end
				end)
				map("n", "<leader>gg", gitsigns.stage_hunk)
				map("n", "<leader>gx", gitsigns.reset_hunk)
				map("n", "<leader>gz", gitsigns.undo_stage_hunk)
				map("n", "<leader>gp", gitsigns.preview_hunk)
			end,
		})
	end,
}
