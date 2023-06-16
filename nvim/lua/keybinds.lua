opts = {noremap = true, silent = true}

-- Set leader to space
vim.g.mapleader = ' '

-- Open terminal
-- vim.keymap.set('n', '<C-t>', ':term<CR>', opts)

-- Escape goes to normal mode in terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Fix last spelling mistake
vim.keymap.set('i', '<C-l>', '<C-g>u<Esc>[s1z=`]a<C-g>u', opts)

-- Toggle nvimtree
-- vim.keymap.set('n', '<C-f>', ':NvimTreeFindFileToggle<CR>', opts)

-- Fuzzy find with telescope
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>', opts)
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>', opts)

-- Move between buffers
vim.keymap.set('n', '<leader><leader>', ':b#<CR>', opts)
-- vim.keymap.set('n', '<leader>l', ':b#<CR>', opts)

-- Create splits
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>x', ':split<CR>', opts)

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', opts)
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', opts)
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', opts)
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', opts)

-- Compile and preview files
vim.keymap.set('n', '<leader>c', ':w! | te compile %<CR>i', opts)
-- vim.keymap.set('n', '<leader>c', ':w! | !compile %<CR><CR>', opts)
vim.keymap.set('n', '<leader>p', ':!preview %<CR><CR>', opts)
