return {
    "ThePrimeagen/harpoon",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    keys = function()
        return {
            {
                "<leader>hm",
                require("harpoon.mark").add_file,
                desc = "add file",
            },
            { "<leader>hn", require("harpoon.ui").nav_next, desc = "next" },
            { "<leader>hp", require("harpoon.ui").nav_prev, desc = "prev" },
            {
                "<leader>hr",
                require("harpoon.mark").rm_file,
                desc = "remove file",
            },
        }
    end,
}
