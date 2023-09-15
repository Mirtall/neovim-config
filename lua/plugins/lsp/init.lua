return {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "onsails/lspkind.nvim"
    },
    config = function()
        local servers = {
            clangd = {},
            ruff_lsp = {},
            ocamllsp = {},
            nil_ls = {},
            rust_analyzer = {},
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")
        for server, config in pairs(servers) do
            lspconfig[server].setup(vim.tbl_deep_extend("force", {
                on_attach = on_attach,
                capabilities = vim.deepcopy(capabilities),
            }, config))
        end

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                local opts = { buffer = ev.buf }
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                vim.keymap.set('n', "<leader>a", vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            end
        })
        end
    }
