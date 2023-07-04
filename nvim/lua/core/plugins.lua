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
  -- vim and tmux panes naviagtion
  {
    "christoomey/vim-tmux-navigator"
  },
  -- Lualine
  {
    "nvim-lualine/lualine.nvim"
  },
  -- Icons in the editor
  {
    "nvim-tree/nvim-web-devicons"
  },
  -- Bufferline tabs
  {
    "akinsho/nvim-bufferline.lua"
  },
  -- Git signs in the editor
  {
    "lewis6991/gitsigns.nvim"
  },
  -- Colorizer
  {
    "norcalli/nvim-colorizer.lua"
  },
  -- Undotree
  {
    "mbbill/undotree"
  },
  -- Language support and syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter"
  },
  -- Indentation lines in editor
  {
    "lukas-reineke/indent-blankline.nvim"
  },
  -- Commenting
  {
    "numToStr/Comment.nvim"
  },
  -- Quick file switch
  {
    "theprimeagen/harpoon"
  },
  -- Lua function that many plugins use
  {
    "nvim-lua/plenary.nvim"
  },
  -- floating terminal within neovim
  {
    "akinsho/toggleterm.nvim"
  },
  -- File search and many more
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1'
  },
  -- Telescope extension
  {
    'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
  },
  -- File browser
  {
    "nvim-telescope/telescope-file-browser.nvim"
  },
  -- Used for colorscheme in neovim
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
  -- notification and command line interface
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
  -- scroll bar which gives lsp updates
  {
    "petertriho/nvim-scrollbar"
  },
  -- for making everything transparent
  {
    "xiyaowong/nvim-transparent",
    opts = {
      extra_groups = {
        "NormalFloat",
        "OctoEditable",
      },
    },
  },
  -- Notifications in neovim
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#2E3440",
      stages = "static",
      timeout = 1500,
    },
  },
  -- Gives the Startup time of Neovim
  {
    "dstein64/vim-startuptime"
  },
  -- No Distraction editor
  {
    "folke/zen-mode.nvim"
  },
  -- highlights the repeating words in the file 
  {
    "RRethy/vim-illuminate"
  },
  -- Lsp Progress in fidget UI
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "VimEnter",
    config = function()
      require("core.plugins-config.fidget")
    end,
  },
  -- Playground from treesitter in editor
  {
    "nvim-treesitter/playground"
  },
  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  -- Advance search and movement
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
