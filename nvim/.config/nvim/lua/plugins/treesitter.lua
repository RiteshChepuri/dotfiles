return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "windwp/nvim-ts-autotag",
            "nvim-treesitter/nvim-treesitter-context",
        },
        config = function()
            local treesitter = require("nvim-treesitter.configs")
            treesitter.setup({ -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                indent = { enable = true },
                sync_install = true,
                auto_install = true,
                ensure_installed = {
                    "json",
                    "javascript",
                    "typescript",
                    "tsx",
                    "yaml",
                    "html",
                    "css",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "lua",
                    "gitignore",
                    "c",
                    "fish",
                    "java",
                    "php",
                    "astro",
                    "regex",
                    "norg",
                    "scss",
                    "svelte",
                    "typst",
                    "vue"
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
            })
            require("nvim-ts-autotag").setup({
                opts = {
                    -- Defaults
                    enable_close = true,          -- Auto close tags
                    enable_rename = true,         -- Auto rename pairs of tags
                    enable_close_on_slash = true, -- Auto close on trailing </
                },
            })
        end,
    },
}
