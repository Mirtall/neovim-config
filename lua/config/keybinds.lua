function map(mode, rhs, lhs)
    vim.api.nvim_set_keymap(mode, rhs, lhs, { noremap = true })
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = {"cpp", "c"},
-- command = map("n", "<leader>ss", ":ClangdSwitchSourceHeader<CR>")
-- doesn't work. apparently `command` waits for a string or smth...
    command = "nnoremap <leader>ss :ClangdSwitchSourceHeader<CR>",
})
