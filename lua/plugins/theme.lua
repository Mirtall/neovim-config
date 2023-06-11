return {
    "Shatur/neovim-ayu",
    priority = 1000,
    opts = {
        mirage = true,
    },
    config = function(_, opts)
        local ayu = require("ayu")
        ayu.setup(opts)
        ayu.colorscheme()
    end
}
