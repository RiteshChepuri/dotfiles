-- Easy Escape
vim.keymap.set("i", "jj", "<ESC>", { desc = "Better Escape" })

-- Open Line above or below
vim.keymap.set("n", "<A-o>", "o<ESC>")
vim.keymap.set("n", "<A-O>", "O<ESC>")

-- Open Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.OilToggle)

-- Close a Buffer
vim.keymap.set("n", "<A-e>", vim.cmd.bd)

-- Clear searches
vim.keymap.set("n", "<ESC>", "<Cmd>noh<CR><ESC>")

-- Delete a character without copying into the register
vim.keymap.set("n", "x", '"_x')

-- Scroll Page down (Center the cursor)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Make the Current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR> <CR>", { silent = true })

-- Disable Space
vim.keymap.set("n", "<Space>", "<NOP>")

-- Keep The Search results in middle of the screen
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Replace the Current word within entire file from ThePrimeagen config
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Go to start or end of line easier from jdhao config
vim.keymap.set({ "n", "x" }, "H", "^")
vim.keymap.set({ "n", "x" }, "L", "g_")

-- Plugin Related keymaps

-- Diffview
vim.keymap.set("n", "<leader>gd", "<Cmd>DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>gq", "<Cmd>DiffviewClose<CR>")

-- Undotree
vim.keymap.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fc", builtin.commands, {})
-- k.set("n", "<leader>fh", "<Cmd>Telescope harpoon marks<CR>", {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
