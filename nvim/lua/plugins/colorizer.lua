return {
  "NvChad/nvim-colorizer.lua",
  event = {"BufReadPre","BufNewFile"},
  config = function(_, opts)
    require("colorizer").setup(opts)

    vim.defer_fn(function()
      require("colorizer").attach_to_buffer(1)
    end, 0)
  end,
}
