return {
    -- Lazy manages itself
    { "folke/lazy.nvim", version = "*" },

    -- C-{hjkl} split nagivation for nvim and tmux
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
        config = function()
            vim.g.tmux_navigator_no_mappings = 1
        end,
    },
}
