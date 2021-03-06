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

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } 

    -- Better commenting support
    use 'numToStr/Comment.nvim'

    -- Auto close certain characters
    use 'windwp/nvim-autopairs'

    -- Statusbar
    use 'nvim-lualine/lualine.nvim' 

    -- NvimTree
    use 'kyazdani42/nvim-tree.lua'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'

    -- Sync packer after install
    if packer_bootstrap then
        require('packer').sync()
    end
end)
