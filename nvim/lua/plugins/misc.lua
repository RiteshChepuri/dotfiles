return {
  {"christoomey/vim-tmux-navigator"},
  {"tjdevries/colorbuddy.nvim"},
  {"wakatime/vim-wakatime",
  event = "VeryLazy"},
{
  "stevearc/dressing.nvim",
  event = "VeryLazy"
},
{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
},
{"sindrets/diffview.nvim"},
}
