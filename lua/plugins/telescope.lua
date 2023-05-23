return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim"},
        { "nvim-telescope/telescope-fzf-native.nvim"},
        { "nvim-tree/nvim-web-devicons" }
    },
    keys = function()
        local builtin = require('telescope.builtin')
        return {
            { "<leader>ff", builtin.find_files, desc = "files"},
            { "<leader>fg", builtin.live_grep, desc = "grep"},
        }
    end,
    config = function()
        local telescope = require("telescope")
        telescope.setup({})
    end,
}
