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

k.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
k.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
k.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
k.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Keymaps related PLugins
--
-- nvimtree
k.set("n", "<leader>e","<Cmd>NvimTreeToggle<CR>")

-- Telescope
local builtin = require("telescope.builtin")
k.set("n", "<leader>ff", builtin.find_files, {})
k.set("n", "<leader>fg", builtin.live_grep, {})
k.set("n", "<leader>fs", builtin.grep_string, {})
k.set("n", "<leader>fd", builtin.diagnostics, {})
k.set("n", "<leader>fk", builtin.keymaps, {})
k.set("n", "<leader>fb", builtin.buffers, {})
k.set("n", "<leader>fc", builtin.commands, {})
-- k.set("n", "<leader>fh", "<Cmd>Telescope harpoon marks<CR>", {})
k.set("n", "<leader>gf", builtin.git_files,	 {})
k.set("n", "<leader>gc", builtin.git_commits,	 {})
k.set("n", "<leader>gb", builtin.git_bcommits,	 {})
k.set("n", "<leader>gs", builtin.git_status,	 {})

-- Undotree
k.set("n", "<leader>u","<Cmd>UndotreeToggle<CR>")

-- markdown preview
k.set("n", "<leader>mp","<Cmd>MarkdownPreview<CR>")

-- Diffview
k.set("n", "<leader>gd", "<Cmd>DiffviewOpen<CR>")
k.set("n", "<leader>gq", "<Cmd>DiffviewClose<CR>")

-- trouble
k.set("n", "<leader>xx", function() require("trouble").toggle() end)
k.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
k.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
k.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
k.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
k.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Trouble
k.set("n", "<leader>xt","<Cmd>TodoTrouble<CR>")
k.set("n", "<leader>tt","<Cmd>TodoTelescope<CR>")
