local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then
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

local plugins = {
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd [[ colorscheme NeoSolarized ]]
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  {
    "christoomey/vim-tmux-navigator"
  },
  {
    "nvim-lualine/lualine.nvim"
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  {
    "akinsho/nvim-bufferline.lua"
  },
  {
    "lewis6991/gitsigns.nvim"
  },
  {
    "norcalli/nvim-colorizer.lua"
  },
  {
    "mbbill/undotree"
  },
  {
    "nvim-treesitter/nvim-treesitter"
  },
  {
    "lukas-reineke/indent-blankline.nvim"
  },
  {
    "numToStr/Comment.nvim"
  },
  {
    "theprimeagen/harpoon"
  },
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "akinsho/toggleterm.nvim"
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1'
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
  },
  {
    "nvim-telescope/telescope-file-browser.nvim"
  },
  {
    "tjdevries/colorbuddy.nvim"
  },
  -- {
  --   "folke/which-key.nvim",
  --   event = "VeryLazy",
  --   init = function()
  --     vim.o.timeout = true
  --     vim.o.timeoutlen = 300
  --   end,
  --   opts = {
  --   }
  -- },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = { inc_rename = true },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "xiyaowong/nvim-transparent",
    opts = {
      extra_groups = {
        "NormalFloat",
        "OctoEditable",
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#2E3440",
      stages = "static",
      timeout = 1500,
    },
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
