return {
    -- Automatically infer indent size
    {
        "nmac427/guess-indent.nvim",
        event = "BufReadPre",
        config = true,
    },

    -- Comment keymap
    {
        "numToStr/Comment.nvim",
        event = "VeryLazy",
        config = true
    },
    -- {
    --     "echasnovski/mini.comment",
    --     version = false,
    --     event = "VeryLazy",
    --     config = true
    -- },

    -- Auto-close characters
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },

    -- Better surrounding verbs/objects
    {
        "echasnovski/mini.surround",
        version = false,
        event = "VeryLazy",
        opts = {
            custom_surroundings = {
                ["p"] = {
                    input = { '%b()', '^.().*().$' },
                    output = { left = '(', right = ')' }
                },
                ["b"] = {
                    input = { { '%b()', '%b[]', '%b{}' }, '^.().*().$' },
                    output = { left = '[', right = ']' }
                },
                ["B"] = {
                    input = { '%b{}', '^.().*().$' },
                    output = { left = '{', right = '}' }
                },
            },
            mappings = {
                add = "ys",
                delete = "ds",
                find = "",
                find_left = "",
                highlight = "",
                replace = "cs",
                update_n_lines = "",
            },
            search_method = "cover_or_next",
            silent = true
        }
    },
    -- {
    --     "kylechui/nvim-surround",
    --     version = "*",
    --     event = "VeryLazy",
    --     opts = {
    --         aliases = {
    --             ["p"] = ")",
    --             ["b"] = "]",
    --         }
    --     }
    -- },
}
