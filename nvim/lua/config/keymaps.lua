-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local k = vim.keymap -- For Consciseness
-- General Keymaps

-- Use jj to exit insert mode
k.set("i", "jj", "<ESC>")

-- Delete a character without copying into the register
k.set("n", "x", '"_x')

-- Clear searches
k.set("n", "<ESC>", "<Cmd>noh<CR><ESC>")

-- Scroll Page down (Center the cursor)
k.set("n", "<C-d>", "<C-d>zz")
k.set("n", "<C-u>", "<C-u>zz")

-- Disable Space
k.set("n", "<Space>", "<NOP>")

-- Keep The Search results in middle of the screen
k.set("n", "n", "nzz")
k.set("n", "N", "Nzz")

-- Replace the Current word within entire file from ThePrimeagen config
k.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Open Line above or below
k.set("n", "<A-o>", "o<ESC>")
k.set("n", "<A-O>", "O<ESC>")

-- Go to start or end of line easier from jdhao config
k.set({ "n", "x" }, "H", "^")
k.set({ "n", "x" }, "L", "g_")

-- Plugins related keymaps

-- Harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

k.set("n", "<leader>m", mark.add_file)
k.set("n", "<leader>a", ui.toggle_quick_menu)

k.set("n", "<A-1>", function()
  ui.nav_file(1)
end)

k.set("n", "<A-2>", function()
  ui.nav_file(2)
end)

k.set("n", "<A-3>", function()
  ui.nav_file(3)
end)

k.set("n", "<A-4>", function()
  ui.nav_file(4)
end)

k.set("n", "<A-5>", function()
  ui.nav_file(5)
end)

k.set("n", "<A-6>", function()
  ui.nav_file(6)
end)

k.set("n", "<A-7>", function()
  ui.nav_file(7)
end)

k.set("n", "<A-8>", function()
  ui.nav_file(8)
end)

-- Undotree
k.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR>")

-- Markdown preview
-- k.set("n", "<leader>mp", "<Cmd>MarkdownPreview<CR>")
--
-- Diffview
k.set("n", "<leader>gd", "<Cmd>DiffviewOpen<CR>")
k.set("n", "<leader>gq", "<Cmd>DiffviewClose<CR>")

-- Telescope
local builtin = require("telescope.builtin")
k.set("n", "<leader>ff", builtin.find_files, {})
k.set("n", "<leader>fg", builtin.live_grep, {})
k.set("n", "<leader>fs", builtin.grep_string, {})
k.set("n", "<leader>fd", builtin.diagnostics, {})
k.set("n", "<leader>fk", builtin.keymaps, {})
k.set("n", "<leader>fb", builtin.buffers, {})
k.set("n", "<leader>fc", builtin.commands, {})
k.set("n", "<leader>fh", "<Cmd>Telescope harpoon marks<CR>", {})
k.set("n", "<leader>gf", builtin.git_files, {})
k.set("n", "<leader>gc", builtin.git_commits, {})
k.set("n", "<leader>gb", builtin.git_bcommits, {})
k.set("n", "<leader>gs", builtin.git_status, {})

-- Peek (Markdow previewer)
k.set("n", "<leader>mp", "<Cmd>PeekOpen<CR>", {})
