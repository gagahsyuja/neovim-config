return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
    },
    config = function()
        local lspconfig = require("lspconfig")
        -- require("cmp_nvim_lsp").setup()
        -- lspconfig.rust_analyzer.setup({})
        lspconfig.lua_ls.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.svelte.setup({})
    end
}
