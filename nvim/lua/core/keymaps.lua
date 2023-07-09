local k = vim.keymap -- For Consciseness

-- General Keymaps

-- Use jj to exit insert mode
k.set("i","jj","<ESC>")

-- Delete a character without copying into the register
k.set("n","x",'"_x')

-- Tab management
k.set("n","te",":tabedit ")
k.set("n","tc",":tabclose<CR>")

-- Clear searches
k.set("n","<ESC>","<Cmd>noh<CR><ESC>")

-- Plugins related keymaps

vim.g.mapleader = " "

-- Nvim tree 
k.set("n","<leader>e",":NvimTreeToggle<CR>")

-- Bufferline
k.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})

-- Undotree
k.set("n","<leader>u",vim.cmd.UndotreeToggle)

-- Toggleterm
k.set("n","<leader>tt",":ToggleTerm<CR>")

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

k.set("n","<leader>m",mark.add_file)
k.set("n","<leader>a",ui.toggle_quick_menu)

k.set("n","<A-1>", function()
  ui.nav_file(1)
end)

k.set("n","<A-2>", function()
  ui.nav_file(2)
end)

k.set("n","<A-3>", function()
  ui.nav_file(3)
end)

k.set("n","<A-4>", function()
  ui.nav_file(4)
end)

k.set("n","<A-5>", function()
  ui.nav_file(5)
end)

-- Telescope
local builtin = require("telescope.builtin")
k.set("n","<leader>ff",builtin.find_files,{})
k.set("n","<leader>fg",builtin.live_grep,{})
k.set("n","<leader>fs",builtin.grep_string,{})
k.set("n","<leader>fh",builtin.help_tags,{})
k.set("n","<leader>fd",builtin.diagnostics,{})
k.set("n","<leader>fk",builtin.keymaps,{})
k.set("n","<leader>fb",builtin.buffers,{})
