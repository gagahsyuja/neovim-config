return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },

    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "rust_analyzer",
                "svelte",
                "tailwindcss",
                "ts_ls",
                "cssls",
                "clangd",
                "lua_ls"
            }
        })
    end
}
