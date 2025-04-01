-- Open Line above or below
vim.keymap.set("n", "<A-o>", "o<ESC>")
vim.keymap.set("n", "<A-O>", "O<ESC>")

-- Clear searches
vim.keymap.set("n", "<ESC>", "<Cmd>noh<CR><ESC>")

-- Scroll Page down (Center the cursor)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Disable Space
vim.keymap.set("n", "<Space>", "<NOP>")

-- Keep The Search results in middle of the screen
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Replace the Current word within entire file from ThePrimeagen config
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Go to start or end of line easier from jdhao config
vim.keymap.set({ "n", "x", "v" }, "H", "^")
vim.keymap.set({ "n", "x", "v" }, "L", "g_")

-- Use Alt with h,j,k,l to navigate in insert mode without using Arrow keys
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-l>", "<Right>")
vim.keymap.set("i", "<A-k>", "<Up>")
vim.keymap.set("i", "<A-j>", "<Down>")

-- next buffer
vim.keymap.set("n", "b[", "<cmd>bprevious<cr>")
vim.keymap.set("n", "b]", "<cmd>bnext<cr>")
-- hello

-- Shift text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
