return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()


            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
        end,
    },
    {
        "kylechui/nvim-surround",
        event = { "BufReadPost", "BufNewFile" },
        config = true,
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({
                toggler = {
                    line = "<leader>cc",
                    comment = "<leader>bc",
                },
                opleader = {
                    line = "<leader>c",
                    block = "<leader>b",
                },

                extra = {
                    above = "<leader>cO",
                    below = "<leader>co",
                    eol = "<leader>cA",
                },
            })
        end,
    }
}
