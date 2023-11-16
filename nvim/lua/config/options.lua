-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- For Consciseness
local o = vim.opt

-- Line Numbers
o.relativenumber = true
o.number = true
o.numberwidth = 1

-- Tabs and Indentation
o.tabstop = 2 -- 2 spaces for tabs
o.shiftwidth = 2 -- 2 spaces for indent width
o.expandtab = true -- Expand tab to Spaces
o.softtabstop = 4 -- Setting tab to 4 while typing
o.smartindent = true -- Insert indents automatically

-- Line wrapping
o.wrap = false

-- Search Settings
o.ignorecase = true -- Ignore case while searching
o.smartcase = true -- If you include mixed case in your search, it assumes you want case sesitive search
o.hlsearch = true -- Highlight search results
o.incsearch = true -- Set Incremental Search like modern browsers

-- Cursor Line
o.cursorline = false -- Highlight cursor line

-- Appearence
o.termguicolors = true
o.background = "dark" -- Background set to dark which is required for various colorschemes
o.signcolumn = "yes" -- Show Sign column so that text doesnt shift
o.winblend = 0 -- setting the winblend to 0
o.wildoptions = "pum" -- Enabling pumblend

-- Scroll off
o.scrolloff = 10 -- Scroll off to 10
o.sidescrolloff = 8 -- Sidescroll off to 8

-- Scrolling
o.ttyfast = true
o.lazyredraw = false

-- Command Line
o.cmdheight = 1

-- Backup
o.backup = false
o.swapfile = false
o.undofile = true

-- Window split
o.splitright = true
o.splitbelow = true

-- encoding
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- Language specification
o.spelllang = { "en" }

-- Enable auto write
o.autowrite = true

-- Open Command Popup
vim.cmd([[command! -nargs=0 GoToCommand :Telescope commands]])

-- file open popup
vim.cmd([[command! -nargs=0 GoToFile :Telescope find_files]])
