return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
    },
    cmd = "Neogit",
    keys = {
        { "<leader>g", "<CMD>Neogit<CR>", desc = "neogit" },
    },
    opts = {
        integrations = {
            diffview = true,
        },
        disable_commit_confirmation = true,
    },
}
