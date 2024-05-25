return {
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
    context_char = "│",
    config = function ()
        require("ibl").setup()
    end
}
}
