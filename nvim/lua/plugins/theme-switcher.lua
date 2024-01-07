return {
  "zaldih/themery.nvim",
  config = function()
    -- Set custom name to the list
    require("themery").setup({
      themes = {
        {
          name = "rosepine",
          colorscheme = "rose-pine",
        },
        {
          name = "osaka",
          colorscheme = "solarized-osaka",
        },
        {
          name = "tokyonight",
          colorscheme = "tokyonight",
        },
        {
          name = "catppuccin",
          colorscheme = "catppuccin",
        },
        {
          name = "onedark",
          colorscheme = "onedark",
        },
        {
          name = "papercolor",
          colorscheme = "papercolor-theme",
        },
        {
          name = "aura-theme",
          colorscheme = "aura",
        },
      },
    })
  end,
}
