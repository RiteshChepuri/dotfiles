-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs and Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

-- Line Wrapping
vim.opt.wrap = false

-- Backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearence
vim.opt.signcolumn = "yes"

-- Scrolling
vim.opt.scrolloff = 10

-- Update
vim.opt.updatetime = 50

-- Window Split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- cursor line
vim.opt.cursorline = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
