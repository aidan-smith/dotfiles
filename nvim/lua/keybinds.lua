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

-- Open Terminal
map('n', '<C-t>', ':term<CR>')

-- Toggle nvimtree
map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Fuzzy find with telescope
map('n', '<leader>f', '<cmd>Telescope find_files<cr>')
map('n', '<leader>g', '<cmd>Telescope live_grep<cr>')

-- Preview and compile shortcuts
map('n', '<leader>p', ':w<CR>')
map('n', '<leader>c', ':w<CR>')

-- Don't use arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Moving around terminals
map('t', '<C-h>', '<C-\\><C-n><C-w>h')
map('t', '<C-j>', '<C-\\><C-n><C-w>j')
map('t', '<C-k>', '<C-\\><C-n><C-w>k')
map('t', '<C-l>', '<C-\\><C-n><C-w>l')
