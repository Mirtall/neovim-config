return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "HiPhish/nvim-ts-rainbow2",
    },
    opts = {
        ensure_installed = {
            "c",
            "cpp",
            "lua",
            "ocaml",
            "python",
            "bash",
            "nix",
        },
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
