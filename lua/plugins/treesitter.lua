return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "cpp",
                "rust",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "html",
                "css",
                "javascript",
                "typescript",
                "svelte",
                "dart"
            },
            highlight = { enable = true },
            indent = { enable = false },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Leader>in",
                    node_incremental = "<Leader>ii",
                    scope_incremental = "<Leader>II",
                    node_decremental = "<Leader>dd"
                }
            }
        })
    end
}
