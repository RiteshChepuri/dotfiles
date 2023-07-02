local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },

	autotag = { enable = true },
	ensure_installed = {
    "bash",
		"c",
		"css",
		"fish",
		"gitignore",
		"java",
		"html",
		"javascript",
    "query"
		"json",
		"json5",
		"lua",
		"markdown",
		"python",
		"tsx",
		"typescript",
    "bash",
    "regex",
    "markdown_inline"
	},
	auto_install = true,
	rainbow = {
		enable = true,
		extended_mode = true,
		max_files_lines = nil,
	},
})
