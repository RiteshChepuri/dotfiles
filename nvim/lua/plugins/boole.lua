return {
	"nat-418/boole.nvim",
	config = function()
		require("boole").setup({
			mappings = {
				increment = "<C-a>",
				decrement = "<C-x>",
			},
			additions = {
				{ "enable", "disable" },
				{ "production", "development", "test" },
				{ "let", "const" },
				{ "start", "end" },
				{ "before", "after" },
				{ "plus", "minus" },
				{ "smart", "truncate" },
				{ "left", "right" },
				{ "top", "bottom" },
				{ "is", "are" },
			},
		})
	end,
}
