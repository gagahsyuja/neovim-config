return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
        -- vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', { silent = true })
        -- vim.keymap.set('n', '<C-n>', ':Neotree close filesystem<CR>', { silent = true })
    end
}