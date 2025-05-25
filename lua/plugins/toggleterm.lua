return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup({
            direction = "float",
            insert_mappings = false,
            open_mapping = [[<leader><CR>]],
            shell = "fish"
        })
        vim.keymap.set('n', '<leader><CR>', ':ToggleTerm<CR>', { silent = true });
    end
}
