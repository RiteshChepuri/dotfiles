-- Easy Escape
vim.keymap.set("i", "jj", "<ESC>", { desc = "Better Escape" })
vim.keymap.set("i", "<C-c>", "<ESC>", { desc = "Better Escape" })

-- Open Line above or below
vim.keymap.set("n", "<A-o>", "o<ESC>")
vim.keymap.set("n", "<A-O>", "O<ESC>")

-- Open Netrw
vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>")

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

-- Use Alt with h,j,k,l to navigate in insert mode without using Arrow keys
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-l>", "<Right>")
vim.keymap.set("i", "<A-j>", "<Up>")
vim.keymap.set("i", "<A-k>", "<Down>")

-- next buffer
vim.keymap.set("n", "b[", "<cmd>bprevious<cr>")
vim.keymap.set("n", "b]", "<cmd>bnext<cr>")

-- Shift text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Close a buffer with A-e
vim.keymap.set("n", "<A-e>", "<cmd>bd<cr>")
