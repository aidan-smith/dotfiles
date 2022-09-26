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

-- Toggle nvimtree
map('n', '<C-f>', ':NvimTreeFindFileToggle<CR>')

-- Fuzzy find with telescope
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>g', ':Telescope live_grep<CR>')
map('n', '<leader>b', ':Telescope buffers<CR>')

-- Preview and compile shortcuts
map('n', '<leader>p', ':w<CR>')
-- map('n', '<leader>p', function() require("knap").toggle_autopreviewing() end)
map('n', '<leader>c', ':w<CR>')

-- Don't use arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Save buffer
map('n', '<C-s>', ':w<CR>')

-- Close splits
map('n', '<C-d>', ':q<CR>')
map('n', '!<C-d>', ':q!<CR>')

-- Move between buffers
map('n', '<C-p>', ':bn<CR>')
map('n', '<C-n>', ':bp<CR>')

-- Create splits
map('n', '<leader>\\', ':vsplit<CR>')
map('n', '<leader>-', ':split<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', ':TmuxNavigateLeft<CR>')
map('n', '<C-j>', ':TmuxNavigateDown<CR>')
map('n', '<C-k>', ':TmuxNavigateUp<CR>')
map('n', '<C-l>', ':TmuxNavigateRight<CR>')

-- Toggle ZenMode
map('n', '<leader>z', ':ZenMode<CR>')
