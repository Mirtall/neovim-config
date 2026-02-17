return {
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        keys = function()
            local notify = require("notify")
            return {
                { "<leader>d", notify.dismiss },
            }
        end,

        config = function(opts)
            require("noice").setup({
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                },
                presets = {
                    bottom_search = true,
                    command_palette = true,
                    long_message_to_split = true,
                    inc_rename = false,
                    lsp_doc_border = false,
                },
            })
        end,
    },
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            dashboard.section.header.val = {
                " .-----------------. .----------------.  .----------------.  .----------------.  .----------------.  .----------------. ",
                "| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |",
                "| | ____  _____  | || |  _________   | || |     ____     | || | ____   ____  | || |     _____    | || | ____    ____ | |",
                "| ||_   \\|_   _| | || | |_   ___  |  | || |   .'    `.   | || ||_  _| |_  _| | || |    |_   _|   | || ||_   \\  /   _|| |",
                "| |  |   \\ | |   | || |   | |_  \\_|  | || |  /  .--.  \\  | || |  \\ \\   / /   | || |      | |     | || |  |   \\/   |  | |",
                "| |  | |\\ \\| |   | || |   |  _|  _   | || |  | |    | |  | || |   \\ \\ / /    | || |      | |     | || |  | |\\  /| |  | |",
                "| | _| |_\\   |_  | || |  _| |___/ |  | || |  \\  `--'  /  | || |    \\ ' /     | || |     _| |_    | || | _| |_\\/_| |_ | |",
                "| ||_____|\\____| | || | |_________|  | || |   `.____.'   | || |     \\_/      | || |    |_____|   | || ||_____||_____|| |",
                "| |              | || |              | || |              | || |              | || |              | || |              | |",
                "| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |",
                " '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'",
            }

            dashboard.section.buttons.val = {
                dashboard.button("n", " > New file", "<CMD>ene<CR>"),
                dashboard.button(
                    "f",
                    "󰱽 > Find files",
                    "<CMD>Telescope find_files<CR>"
                ),
                dashboard.button("g", " > Git", "<CMD>Neogit<CR>"),
                dashboard.button(
                    "r",
                    "󰑑 > Find word",
                    "<CMD>Telescope live_grep<CR>"
                ),
                dashboard.button("s", " > Sessions", "<CMD>AutoSession search<CR>"),
                dashboard.button("p", "󰚥 > Plugins", "<CMD>Lazy<CR>"),
                dashboard.button("P", " > Profile", "<CMD>Lazy profile<CR>"),
                dashboard.button("q", " > Quit", "<CMD>qa<CR>"),
                dashboard.button("o", " > Oil", "<CMD>Oil<CR>"),
            }

            local function footer()
                local config = require("lazy.core.config")
                local plugins = vim.tbl_values(config.plugins)
                return "Loaded " .. #plugins .. " plugins."
            end

            dashboard.section.footer.val = footer()

            alpha.setup(dashboard.opts)
        end,
    },
    {
        "Shatur/neovim-ayu",
        priority = 1000,
        opts = {
            mirage = true,
        },
        config = function(_, opts)
            local ayu = require("ayu")
            ayu.setup(opts)
            ayu.colorscheme()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = {
            options = {
                theme = "ayu",
                section_separators = {
                    left = "",
                    right = "",
                },
                component_separators = {
                    left = "",
                    right = "",
                },
            },
        },
    },
}
