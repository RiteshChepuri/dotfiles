return {
	"nat-418/boole.nvim",
	event = "BufEnter",
	opts = {
		mappings = {
			increment = "<C-a>",
			decrement = "<C-x>",
		},
		additions = {
			{ "production", "development", "test", "sandbox" },
			{ "let", "const" },
			{ "start", "end" },
			{ "import", "export" },
			{ "before", "after" },
			{ "plus", "minus" },
			{ "smart", "truncate" },
			{ "left", "right" },
			{ "is", "are" },
			{ "enable", "disable" },
			{ "top", "bottom" },
			{ "foregound", "background" },
		},
	},
}
