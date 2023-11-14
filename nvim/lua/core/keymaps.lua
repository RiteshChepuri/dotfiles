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

-- Undotree
k.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR>")

-- Nvim tree
k.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>")
