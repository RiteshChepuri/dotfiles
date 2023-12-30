local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.opt.termguicolors = true

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
  },
  checker = { enabled = true}, -- automatically check for plugin updates
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = true, -- get a notification when changes are found
  },
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip", -- Vim plugin for editing compressed files.
        "tarPlugin", -- tarPlugin.vim -- a Vim plugin for browsing tarfiles
        "tohtml", -- Vim plugin for converting a syntax highlighted file to HTML.
        "zipPlugin", -- zipPlugin.vim: Handles browsing zipfiles
        "netrwPlugin", -- netrwPlugin.vim: Handles file transfer and remote directory listing across a network
        "rplugin", -- support of plugins written in other languages
        -- "spellfile",   -- Vim plugin for downloading spell files
        -- "matchit",  -- matchit.vim: (global plugin) Extended "%" matching
        -- "matchparen", -- Vim plugin for showing matching parens
        -- "tutor",
        -- "man",
        -- "shada",
        -- "health",
        -- "editorconfig",
        -- "nvim",
      },
    },
  },
  ui = {
    -- a number <1 is a percentage., >1 is a fixed size
    size = { width = 0.8, height = 0.8 },
    wrap = true, -- wrap the lines in the ui
    -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
    border = "single",
    title = nil, ---@type string only works when border is not "none"
    title_pos = "center", ---@type "center" | "left" | "right"
    -- Show pills on top of the Lazy window
    pills = true, ---@type boolean
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "󰒲 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = "✔ ",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },
  },
})
