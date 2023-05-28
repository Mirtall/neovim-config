return {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local servers = {
            clangd = {},
            pyright = {},
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")
        for server, config in pairs(servers) do
            lspconfig[server].setup{}
        end
        -- (vim.tbl_deep_extend("force", {
        --         on_attach = on_attach,
        --         capabilities = vim.deepcopy(capabilities),
        --     }, config))
    end
}
