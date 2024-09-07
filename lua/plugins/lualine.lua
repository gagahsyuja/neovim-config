return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            tabline = {
                lualine_a = {"buffers"},
                lualine_b = {"branch"},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {"tabs"}
            },
        })
    end
}
