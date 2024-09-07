return {
    {
        "sainnhe/gruvbox-material",
        name = "gruvbox-material",
        priority = 1000,
        config = function()
            vim.cmd("let g:gruvbox_material_background = 'soft'")
            vim.cmd("set background=dark")
            vim.cmd.colorscheme("gruvbox-material")
        end
    }
}
