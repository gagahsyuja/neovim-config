return {
    "edluffy/specs.nvim",
    config = function()
        local specs = require("specs")
        specs.setup({
            show_jump = true,
            popup = {
                fader = specs.pulse_fader,
                resizer = specs.shrink_resizer
            }
        })
        vim.api.nvim_set_keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
    end
}
