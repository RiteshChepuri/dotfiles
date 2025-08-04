local api = vim.api

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Remove all trailing whitespaces on save
local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
	command = [[:%s/\s\+$//e]],
	group = TrimWhiteSpaceGrp,
})

-- Open files where you left of last time
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
		if row > 0 and row <= vim.api.nvim_buf_line_count(0) then
			vim.api.nvim_win_set_cursor(0, { row, col })
		end
	end,
	desc = "Restore cursor position",
})

-- Close certain file types with q
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "help", "man", "qf", "lspinfo", "spectre_panel", "checkhealth" },
	command = "nnoremap <buffer> q :close<CR>",
	desc = "Close certain windows with q",
})

-- Enable spell check for markdown, git commit messages, and text files.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "gitcommit", "markdown", "text" },
	command = "setlocal spell",
	desc = "Enable spell check for certain filetypes",
})
