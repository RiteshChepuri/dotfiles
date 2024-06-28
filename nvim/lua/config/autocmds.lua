local api = vim.api

-- Better Open line Commands
-- Open Line above or below without leaving normal mode and leaving the current line
vim.api.nvim_create_user_command("OpenLine", function(opts)
	local where = opts.fargs[1]
	if where == "below" then
		vim.cmd("normal mzo`z")
	else
		vim.cmd("normal mzO`z")
	end
end, {
	desc = "Better open line",
	force = true,
	nargs = 1,
})

-- when in a comment and you press o to go into a new line, don't make that line a comment line.
local comment_group = vim.api.nvim_create_augroup("fix comment enter", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions:remove({ "o" })
		vim.opt.formatoptions:append({ "c" })
	end,
	group = comment_group,
	pattern = "*",
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"PlenaryTestPopup",
		"help",
		"lspinfo",
		"man",
		"notify",
		"qf",
		"spectre_panel",
		"startuptime",
		"tsplayground",
		"neotest-output",
		"checkhealth",
		"neotest-summary",
		"neotest-output-panel",
		"undotree",
		"DiffviewFiles",
		"vim",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
	end,
})

-- Remove all trailing whitespaces on save
local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
	command = [[:%s/\s\+$//e]],
	group = TrimWhiteSpaceGrp,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	-- group = vim.api.nvim_create_augroup("auto_create_dir"),
	callback = function(event)
		if event.match:match("^%w%w+://") then
			return
		end
		local file = vim.loop.fs_realpath(event.match) or event.match
		vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
	end,
})

vim.api.nvim_create_user_command("OilToggle", function()
	local current_buf = vim.api.nvim_get_current_buf()
	local current_filetype = vim.api.nvim_buf_get_option(current_buf, "filetype")

	if current_filetype == "oil" then
		-- We use a command to go to the previous buffer
		vim.cmd("b#")
	else
		-- Open oil if not already in an oil buffer
		vim.cmd("Oil")
	end
end, { nargs = 0 })
