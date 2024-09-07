return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                -- style_preset = bufferline.style_preset.default,
                themable = true,
                numbers = "ordinal",
                indicator = {
                    style = "underline"
                },
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        text_align = left,
                        separator = true
                    }
                }
            },
        })
    end
}
