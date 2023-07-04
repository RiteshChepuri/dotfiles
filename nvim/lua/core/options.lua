-- For Consciseness
local o = vim.opt

-- Line Numbers
o.relativenumber = true
o.number = true
o.numberwidth = 2

-- Tabs and Indentation
o.tabstop = 2 -- 2 spaces for tabs
o.shiftwidth = 2 -- 2 spaces for indent width
o.expandtab = true -- Expand tab to Spaces
o.softtabstop = 4 -- Setting tab to 4 while typing

-- Line wrapping
o.wrap = false

-- Search Settings
o.ignorecase = true -- Ignore case while searching
o.smartcase = true -- If you include mixed case in your search, it assumes you want case sesitive search
o.hlsearch = true -- Highlight search results

-- Cursor Line
o.cursorline = false -- Highlight cursor line

-- Appearence
o.termguicolors = true
o.background = "dark" -- Background set to dark which is required for various colorschemes
o.signcolumn = "yes" -- Show Sign column so that text doesnt shift
vim.opt.clipboard = ""
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

local autocmd = vim.api.nvim_create_autocmd

-- Clipboard
-- remove this if there's an issue
autocmd({ "BufReadPost", "BufNewFile" }, {
  once = true,
  callback = function()
    -- In wsl 2, just install xclip
    -- Ubuntu
    -- sudo apt install xclip
    -- Arch linux
    -- sudo pacman -S xclip
    vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
  end,
  group = general,
  desc = "Lazy load clipboard",
})

-- file open popup
vim.cmd([[command! -nargs=0 GoToFile :Telescope find_files]])
