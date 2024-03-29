local ls = require("luasnip")

local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

return {
    ls.snippet("inc", fmt('#include "{}"', { i(1) })),
    ls.snippet("Inc", fmt("#include <{}>", { i(1) })),
    ls.snippet(
        "main",
        fmt(
            [[
            int main(int argc, char *argv[])
            {{
                {}
                return 0;
            }}
        ]],
            { i(1) }
        )
    ),

    ls.snippet(
        "mainv",
        fmt(
            [[
            int main(void)
            {{
                {}
                return 0;
            }}
        ]],
            { i(1) }
        )
    ),
    ls.snippet(
        "fore",
        fmt(
            [[
                for ({}; {}; {})
                {{
                    {}
                }}
            ]],
            {
                i(1),
                i(2),
                i(3),
                i(4),
            }
        )
    ),
    ls.snippet(
        "defh",
        fmt(
            [[
                #ifndef {file}
                #define {file}

                {code}

                #endif /* ! {file} */
            ]],
            {
                file = f(function()
                    return vim.fn.expand("%:t"):gsub("[-.]", "_"):upper()
                end),
                code = i(1),
            }
        )
    ),
}
