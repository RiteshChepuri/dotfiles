return {
  {"akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
  },
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slope",
      show_buffer_close_icons = false,
      show_close_icon = false,
      always_show_bufferline = false,
    },
  }},
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      }
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename", "lsp_progress" },
        lualine_x = { "encoding", "fileformat", "filetype", "tabnine" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      }
      tabline = {
        lualine_a = {},
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }
      winbar = {}
      inactive_winbar = {}
      extensions = { "toggleterm", "nvim-tree" }
    end,
  },
{
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
},
{
  "mbbill/undotree",
  lazy = false
},
}
