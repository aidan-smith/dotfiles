return {
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
        opts = {
            ensure_installed = {
                "asm",
                "awk",
                "bash",
                "c",
                "cmake",
                "comment",
                "cpp",
                "css",
                "csv",
                "cuda",
                "diff",
                "dockerfile",
                "editorconfig",
                "git_config",
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
                "python",
                "rust",
                "sql",
                "toml",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)

            local installed = require("nvim-treesitter").get_installed()
            local missing = vim.tbl_filter(function(parser)
                return not vim.tbl_contains(installed, parser)
            end, opts.ensure_installed)

            if #missing > 0 then
                require("nvim-treesitter").install(missing, { summary = true })
            end

            vim.api.nvim_create_autocmd('FileType', {
                group = vim.api.nvim_create_augroup('UserTSConfig', { clear = true }),
                pattern = require("nvim-treesitter").get_installed(),
                callback = function(ev)
                    vim.treesitter.start()
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                    vim.wo[0][0].foldmethod = 'expr'
                end,
            })
        end,
    },

    -- Fuzzy Finder
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
        cmd = "FzfLua",
        keys = {
            { "<leader>f", "<cmd>FzfLua files<CR>", noremap = true, silent = true },
            { "<leader>b", "<cmd>FzfLua buffers<CR>", noremap = true, silent = true },
            { "<leader>/",  "<cmd>FzfLua live_grep<CR>", noremap = true, silent = true },
        },
        opts = {
            { "borderless", "hide" },
            defaults = { file_icons = true },
        },
    },

    -- Fugitive
    {
        "tpope/vim-fugitive",
        cmd = "Git",
        keys = {
            { "<leader>gs", "<cmd>above Git<CR>", noremap = true, silent = true },
            { "<leader>gb", "<cmd>Git blame<CR>", noremap = true, silent = true },
            { "<leader>gd", "<cmd>above Git diff<CR>", noremap = true, silent = true },
        },
    },
}
