return {
    "mfussenegger/nvim-lint",
    event = "BufReadPost",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            python = { "flake8" },
            lua = { "luacheck" },
            markdown = { "markdownlint" },
            -- go = { "golangci-lint" },
        }
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
