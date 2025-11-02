return {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
        { "<leader>o", "<cmd>Oil<cr>", desc = "Open Oil" },
    },
    opts = {
        keymaps = {
            ["hh"] = { "actions.toggle_hidden", mode = "n" },
        },
    },
}
