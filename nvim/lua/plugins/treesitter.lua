return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufreadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "fish",
        "gitignore",
        "java",
        "html",
        "javascript",
        "query",
        "json",
        "json5",
        "lua",
        "markdown",
        "python",
        "tsx",
        "typescript",
        "regex",
        "markdown_inline",
      },
      sync_install = true,
      rainbow = {
        enable = true,
        extended_mode = true,
        max_files_lines = nil,
      },
      auto_install = true,
      autotag = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      highlight = {
        enable = true,
      },
    },
  },
  -- Playground from treesitter in editor
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    opts = {
      enable_autocmd = false,
    },
  },
}
