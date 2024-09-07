return {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust", "rs" },
    config = function()
        vim.g.rustaceanvim = {
            tools = {},
            server = {
                on_attach = function(client, bufnr)
                end,
                default_settings = {
                    ["rust-analyzer"] = {}
                }
            },
            dap = {}
        }
    end
}
