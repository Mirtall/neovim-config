return {
    "goolord/alpha-nvim",
    event =  "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
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
            dashboard.button("f", "󰱽 > Find files", "<CMD>Telescope find_files<CR>"),
            dashboard.button("g", " > Git", "<CMD>Neogit<CR>"),
            dashboard.button("r", "󰑑 > Find word", "<CMD>Telescope live_grep<CR>"),
            dashboard.button("p", "󰚥 > Plugins", "<CMD>Lazy<CR>"),
            dashboard.button("P", " > Profile", "<CMD>Lazy profile<CR>"),
            dashboard.button("q", " > Quit", "<CMD>qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end
}
