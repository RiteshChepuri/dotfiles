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
