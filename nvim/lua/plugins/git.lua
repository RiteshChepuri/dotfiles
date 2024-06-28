return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = " " },
					change = { text = " " },
					delete = { text = " " },
					topdelete = { text = " " },
					changedelete = { text = " " },
					untracked = { text = " " },
				},
				signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
				numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
				linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
				word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
				watch_gitdir = {
					follow_files = true,
				},
				attach_to_untracked = true,
				current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 100,
					ignore_whitespace = false,
					virt_text_priority = 100,
				},
				current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
				sign_priority = 6,
				update_debounce = 100,
				status_formatter = nil, -- Use default
				max_file_length = 40000, -- Disable if file is longer than this (in lines)
				preview_config = {
					-- Options passed to nvim_open_win
					border = "single",
					style = "minimal",
					relative = "cursor",
					row = 0,
					col = 1,
				},
				yadm = {
					enable = false,
				},
				on_attach = function(buffer)
					local gs = package.loaded.gitsigns

					local function map(mode, l, r, desc)
						vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
					end

					map("n", "g]", gs.next_hunk, "Next Hunk")
					map("n", "g[", gs.prev_hunk, "Previous Hunk")
					map("n", "<leader>gx", gs.reset_hunk, "Reset Hunk")
					map("n", "<leader>gg", gs.stage_hunk, "Stage Hunk")
					map("n", "<leader>gp", gs.preview_hunk, "Preview Hunk")
					map("n", "<leader>gu", gs.undo_stage_hunk, "Undo Stage Hunk")
				end,
			})
		end,
	},
	{
		"sindrets/diffview.nvim",
		config = function()
			vim.api.nvim_set_keymap(
				"n",
				"<leader>gd",
				"<cmd>lua my_diffview_toggle()<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
}
