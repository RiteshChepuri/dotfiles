return {
    {
        "folke/trouble.nvim",
        lazy = false,
        config = function()
            require("trouble").setup({
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle("workspace_diagnostics");
            end)

            vim.keymap.set("n", "t[", function()
                require("trouble").next({skip_groups = true, jump = true});
            end)

            vim.keymap.set("n", "t]", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end)

            vim.keymap.set("n","<leader>td",vim.cmd.TodoTrouble)

        end
    },
}
