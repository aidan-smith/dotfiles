-- Define macro for setting keybinds
local map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Set leader to space
vim.g.mapleader = ' '

-- Open terminal
map('n', '<C-t>', ':term<CR>')

-- Escape goes to normal mode in terminal
map('t', '<Esc>', '<C-\\><C-n>')

-- Fix last spelling mistake
map('i', '<C-l>', '<C-g>u<Esc>[s1z=`]a<C-g>u')

-- Toggle nvimtree
map('n', '<C-f>', ':NvimTreeFindFileToggle<CR>')

-- Fuzzy find with telescope
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>g', ':Telescope live_grep<CR>')
map('n', '<leader>b', ':Telescope buffers<CR>')

-- Preview and compile shortcuts
-- map('n', '<leader>p', function() require("knap").toggle_autopreviewing() end)
map('n', '<leader>c', ':w<CR>')

-- Move between buffers
map('n', '<leader><leader>', ':b#<CR>')
-- map('n', '<leader>l', ':b#<CR>')

-- Create splits
map('n', '<leader>v', ':vsplit<CR>')
map('n', '<leader>x', ':split<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', ':TmuxNavigateLeft<CR>')
map('n', '<C-j>', ':TmuxNavigateDown<CR>')
map('n', '<C-k>', ':TmuxNavigateUp<CR>')
map('n', '<C-l>', ':TmuxNavigateRight<CR>')

-- Compile and preview files
map('n', '<leader>c', ':w! | te compile %<CR>i')
-- map('n', '<leader>c', ':w! | !compile %<CR><CR>')
map('n', '<leader>p', ':!preview %<CR><CR>')
