return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    enabled = false,
    config = function()
      require("dashboard").setup({
        -- config
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  { "rcarriga/nvim-notify", enabled = false },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    enabled = false,
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    enabled = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}, enabled = false },
}
