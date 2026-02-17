return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        { "nvim-tree/nvim-web-devicons" },
        { "rmagatti/auto-session" },
    },
    keys = function()
        local builtin = require("telescope.builtin")
        local telescope = require("telescope")
        return {
            { "<leader>ff", builtin.find_files, desc = "files" },
            { "<leader>fg", builtin.live_grep, desc = "grep" },
            { "<leader>fb", builtin.buffers, desc = "buffers" },
            { "<leader>fd", builtin.diagnostics, desc = "diagnostics" },
            { "<leader>fr", builtin.lsp_references, desc = "references" },
            {
                "<leader>fh",
                telescope.extensions.harpoon.marks,
                desc = "buffers",
            },
        }
    end,
    cmd = "Telescope",
    config = function()
        local telescope = require("telescope")
        telescope.setup()
        telescope.load_extension("fzf")
        telescope.load_extension("harpoon")
        telescope.load_extension("session-lens")
    end,
}
