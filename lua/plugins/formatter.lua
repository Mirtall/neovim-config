return {
    "mhartington/formatter.nvim",
    event = "BufWrite",
    config = function()
        vim.g.format_on_save = true

        local formatter = require("formatter")
        formatter.setup({
            filetype = {
                lua = { require("formatter.filetypes.lua").stylua },
                c = { require("formatter.filetypes.c").clangformat },
                cpp = { require("formatter.filetypes.cpp").clangformat },
                nix = { require("formatter.filetypes.nix").nixpkgs_fmt },
                yaml = { require("formatter.filetypes.yaml").prettier },
                json = { require("formatter.filetypes.json").prettier },
                python = { require("formatter.filetypes.python").black },
                rust = { require("formatter.filetypes.rust").rustfmt },
                sql = { require("formatter.filetypes.sql").sqlfluff },
                html = { require("formatter.filetypes.html").prettier },
                go = { require("formatter.filetypes.go").gofmt },
                ["*"] = {
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                },
            },
        })

        vim.api.nvim_create_autocmd("BufWritePost", {
            group = vim.api.nvim_create_augroup(
                "my_format_write",
                { clear = true }
            ),
            pattern = "*",
            callback = function()
                if vim.g.format_on_save then
                    vim.cmd("silent! FormatWrite")
                end
            end,
        })
    end,
}
