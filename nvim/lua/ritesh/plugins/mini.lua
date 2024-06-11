return {
	{
		"echasnovski/mini.ai",
		version = false,
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.notify",
		version = false,
		config = function()
			require("mini.notify").setup()
		end,
	},
}
