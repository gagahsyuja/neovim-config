return {
    "dgagn/diagflow.nvim",
    opts = {},
    config = function()
        require("diagflow").setup({
            enable = true
        })
    end
}
