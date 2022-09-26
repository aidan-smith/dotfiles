-- Automatically install packer

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
	'git',
	'clone',
	'--depth',
	'1',
	'https://github.com/wbthomason/packer.nvim',
	install_path
    })
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer will manage itself
    use "nvim-lua/plenary.nvim" -- Dependency for many plugins
    use 'kyazdani42/nvim-web-devicons' -- Icons used by some plugins

    -- Colorscheme
    use 'marko-cerovac/material.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    -- use 'anott03/nvim-lspinstall'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Better commenting support
    use 'numToStr/Comment.nvim'

    -- Better surrounding motions
    use 'kylechui/nvim-surround'

    -- Auto-close certain characters
    use 'windwp/nvim-autopairs'

    -- Snippets
    use {
        'L3MON4D3/LuaSnip',
        tag = 'v<CurrentMajor>.*'
    }

    -- Statusbar
    use 'nvim-lualine/lualine.nvim'

    -- C-{hjkl} split nagivation for nvim and tmux
    use 'christoomey/vim-tmux-navigator'

    -- NvimTree
    use 'kyazdani42/nvim-tree.lua'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Zen Mode
    use 'folke/zen-mode.nvim'

    -- Sync packer after install
    if packer_bootstrap then
        require('packer').sync()
    end
end)
