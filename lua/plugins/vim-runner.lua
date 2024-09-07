return {
    'aben20807/vim-runner',
    config = function()
        vim.cmd('let g:runner_run_key = "<F9>"')
        vim.cmd('let g:runner_print_time_usage = 0')
        vim.cmd('let g:runner_rust_executable = "cargo"')
        vim.cmd('let g:runner_rust_compile_options = "run"')
    end
}
