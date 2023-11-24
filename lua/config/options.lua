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

vim.g.mapleader = " "

vim.loader.enable()

set.mouse = ""

-- Custom filetypes
vim.filetype.add({
    extension = {
        h = "c",
        tig = "tiger",
        tih = "tiger",
    },
})
