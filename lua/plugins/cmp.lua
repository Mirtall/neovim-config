return {
    "hrsh7th/nvim-cmp",
    version = false,
    event = { "InsertEnter", "CmdLineEnter" },
    dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local cmp = require("cmp")

        local has_words_before = function()
            if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
                return false
            end
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0
                and vim.api
                        .nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]
                        :match("^%s*$")
                    == nil
        end

        cmp.setup({
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },

            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "nvim_lsp_signature_help" },
                { name = "path" },
                { name = "buffer" },
                { name = "copilot" },
            }),

            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = vim.schedule_wrap(function(fallback)
                    if cmp.visible() and has_words_before() then
                        cmp.select_next_item({
                            behavior = cmp.SelectBehavior.Select,
                        })
                    else
                        fallback()
                    end
                end),
                ["<S-Tab>"] = vim.schedule_wrap(function(fallback)
                    if cmp.visible() and has_words_before() then
                        cmp.select_prev_item({
                            behavior = cmp.SelectBehavior.Select,
                        })
                    else
                        fallback()
                    end
                end),
            }),

            formatting = {
                format = require("lspkind").cmp_format({
                    mode = "symbol",
                    with_text = true,
                    menu = {
                        nvim_lsp = "[LSP]",
                        luasnip = "[snip]",
                        nvim_lsp_signature_help = "[sign]",
                        path = "[path]",
                        buffer = "[buf]",
                        copilot = "",
                    },
                }),
            },
        })
    end,
}
