local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then vim.fn.system({
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
  -- {
  --   "Tsuzat/NeoSolarized.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     vim.cmd [[ colorscheme NeoSolarized ]]
  --   end
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
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
    "petertriho/nvim-scrollbar"
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
  {
    "dstein64/vim-startuptime"
  },
  {
    "folke/zen-mode.nvim"
  },
  {
    "RRethy/vim-illuminate"
  },
  {
    "folke/twilight.nvim"
  },
  {
    "nvim-treesitter/playground"
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    --@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
    },
  },
  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline"
  },
  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets"
  },
  -- Managing and Installing Lsp server
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  -- Configuting Lsp servers
  {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "onsails/lspkind.nvim"
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    "jayp0521/mason-null-ls.nvim"
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
