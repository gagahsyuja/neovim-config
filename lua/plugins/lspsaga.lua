return {
    'nvimdev/lspsaga.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    config = function()
        vim.keymap.set('n', '<leader>aa', ':Lspsaga code_action<CR>', { silent = true });
        vim.keymap.set('n', '<leader>hh', ':Lspsaga hover_doc<CR>', { silent = true });
        vim.keymap.set('n', '<leader>rr', ':Lspsaga rename<CR>', { silent = true });
        require('lspsaga').setup({
            lightbulb = {
                enable = false
            }
        })
    end
}
