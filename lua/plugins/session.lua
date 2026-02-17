return {
    'rmagatti/auto-session',
    config = function()
        require('auto-session').setup({
            log_level = 'error',

            suppress_dirs = { '~/', '~/Downloads', '/' },

            auto_save = false,
            auto_restore = false,
        })
    end,
    keys = {
        { "<leader>ws", "<cmd>AutoSession save<CR>", desc = "Save session" },
        { "<leader>fs", "<cmd>AutoSession search<CR>", desc = "Search session"},
    }
}
