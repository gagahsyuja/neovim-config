return {
    "ms-jpq/chadtree",
    config = function()

        vim.keymap.set('n', '<leader>n', ':CHADopen --always-focus<CR>', { silent = true })
        vim.keymap.set('n', '<C-n>', ':CHADopen<CR>', { silent = true })

        local chadtree_settings = {
            ["theme.text_colour_set"] = "solarized_universal",
            ["theme.icon_glyph_set"] = "devicons",
            ["theme.icon_colour_set"] = "github",
            ["options.session"] = false
        }

        vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
    end
}
