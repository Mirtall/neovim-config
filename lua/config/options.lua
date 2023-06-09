local set = vim.opt

set.background = "dark"

-- List
set.list = true
set.listchars = { tab = "»·", trail = "·" }


-- Tab style
set.expandtab = true
set.smarttab = true
set.tabstop = 8
set.softtabstop = 4
set.shiftwidth = 4

-- Numbers
set.number = true
set.relativenumber = true

-- Completion popup
set.completeopt = { "longest", "menuone" }

-- Misc
set.cc = "80"
set.clipboard = "unnamedplus"
set.belloff = "all"
set.hlsearch = false

vim.g.mapleader = ","

-- Nix tab change
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.nix"},
  command = "set shiftwidth=2",
})

-- Makefile tab change
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"make"},
  command = "setlocal noexpandtab shiftwidth=8",
})

-- CPP shortcut TODO
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = {"cpp"},
--   command = "",
-- })
