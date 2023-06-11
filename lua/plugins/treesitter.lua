return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "HiPhish/nvim-ts-rainbow2",
    },
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        ensure_installed = "all",
        auto_install = true,
        highlight = {
            enable = true,
        },
        rainbow = {
            enable = true,
            query = 'rainbow-parens',
            --strategy = require('ts-rainbow').strategy.global,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end
}
