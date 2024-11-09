
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>]", ":bnext<CR>", opts)
keymap("n", "<leader>[", ":bprevious<CR>", opts)
keymap("n", "<leader><tab>", ":b#<CR>", opts)
keymap("n", "<leader><backspace>", ":bd<CR>", opts)
keymap("n", "<leader>hp", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
