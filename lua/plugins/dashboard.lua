local version = vim.version()
local logo = [[

███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

local center = {
    {
        desc = "Find File ",
        key = "f",
        icon = " ",
        action = "Telescope find_files",
        group = "@markup.heading.1.markdown",
    },
    {
        desc = "New File ",
        key = "n",
        icon = " ",
        action = "enew",
        group = "@markup.heading.3.markdown",
    },
    {
        desc = "Reload Session ",
        key = "r",
        icon = " ",
        action = "SessionLoad",
        group = "@markup.heading.4.markdown",
    },
    {
        desc = "Exit ",
        key = "q",
        icon = " ",
        action = "exit",
        group = "@markup.heading.6.markdown",
    },
}
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "dashboard",
    group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true }),
    callback = function()
        vim.cmd([[
        setlocal buftype=nofile
        setlocal nonumber norelativenumber nocursorline noruler fillchars=eob:\ 
        nnoremap <buffer> <F2> :h news.txt<CR> 
        ]])
    end,
})

return {
    "nvimdev/dashboard-nvim",
    opts = {
        theme = "hyper",
        config = {
            header = vim.split(logo, "\n"),
            shortcut = center,
            footer = function()
                local stats = require("lazy").stats()
                local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                return {
                    "",
                    "",
                    "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
                }
            end,
            packages = { enable = false },
        },
    },
}
