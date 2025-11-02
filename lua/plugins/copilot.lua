return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        opts = {
            suggestion = {
                enabled = false,
            },
            panel = { enabled = false },
        },
    },
    {
        "zbirenbaum/copilot-cmp",
        event = "InsertEnter",
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken",
    },
}
