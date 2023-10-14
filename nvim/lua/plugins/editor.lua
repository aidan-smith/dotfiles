return {
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile", },
        cmd = { "TSUpdateSync" },
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "cmake",
                "comment",
                "cpp",
                "css",
                "diff",
                "dockerfile",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "go",
                "html",
                "http",
                "java",
                "javascript",
                "json",
                "latex",
                "lua",
                "make",
                "markdown",
                "markdown_inline",
                "org",
                "python",
                "rust",
                "sql",
                "toml",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "org" }
            },
            indent = { enable = true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    -- Org Mode
    {
        "nvim-orgmode/orgmode",
        dependencies = { "akinsho/org-bullets.nvim" },
        ft = "org",
        keys = { "<leader>oa", "<leader>oc" },
        opts = {
            org_agenda_files =  "~/org/**/*",
            org_default_notes_file = "~/org/notes.org",
                mappings = {
                    org = {
                        org_toggle_checkbox = "<C-c>"
                    }
                }
        },
        config = function(_, opts)
            require("orgmode").setup_ts_grammar()
            require("orgmode").setup(opts)
        end,
    },

    {
        "akinsho/org-bullets.nvim",
        lazy = true,
        config = true,
    },

    -- Fuzzy Finder
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
        cmd = "Telescope",
        keys = {
            { "<leader>f", "<cmd>Telescope find_files<CR>", noremap = true, silent = true },
            { "<leader>b", "<cmd>Telescope buffers<CR>", noremap = true, silent = true },
            { "<leader>/",  "<cmd>Telescope live_grep<CR>", noremap = true, silent = true },
        },
        opts = {
            defaults = {
                mappings = {
                    i = {
                        ["<M-f>"] = false,
                        ["<M-k>"] = false,
                    },
                    n = {
                        ["<C-c>"] = "close",
                    },
                },
            },
        },
        config = true,
    },
}
