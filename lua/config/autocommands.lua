-- Nix tab change
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "nix" },
    command = "set shiftwidth=2",
})

-- Makefile tab change
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "make" },
    command = "setlocal noexpandtab shiftwidth=8",
})

-- News & tickets cc
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.news", "*.ticket" },
    command = "setlocal cc=72",
})
