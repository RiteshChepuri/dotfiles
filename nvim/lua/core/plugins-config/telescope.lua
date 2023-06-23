local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

require("telescope").setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		file_ignore_patterns = { ".git/", "node_modules" },
		path_display = { "smart" },
		prompt_position = { "top" },
		prompt_prefix = " ",
		selection_caret = " ",
		sorting_strategy = "ascending",
		mappings = {

			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				-- ["<C-h>"] = "which_key",
				["<C-j>"] = actions.move_selection_previous,
				["<C-k>"] = actions.move_selection_next,
				["<C-q>"] = actions.close,
			},
		},
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {

		--   picker_config_key = value,
		buffers = {
			prompt_prefix = "﬘",
		},
		commands = {
			prompt_prefix = "",
		},
		git_files = {
			prompt_prefix = " ",
			show_untracked = true,
		},
		find_files = {
			prompt_prefix = " ",
			find_command = { "rg", "--files", "--hidden" },
		},
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
		file_browser = {
			theme = "ivy",
			hijack_netrw = true,
		},
		-- please take a look at the readme of the extension you want to configure
	},
})

telescope.load_extension("fzf")
telescope.load_extension("file_browser")
telescope.load_extension("notify")
telescope.load_extension("harpoon")
