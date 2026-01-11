opts = {noremap = true, silent = true}

-- Escape goes to normal mode in terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Fix last spelling mistake
vim.keymap.set('i', '<C-l>', '<C-g>u<Esc>[s1z=`]a<C-g>u', opts)

-- Toggle netrw
-- vim.keymap.set('n', '<C-f>', vim.cmd.Ex, opts)

-- Move between buffers
vim.keymap.set('n', '<leader><leader>', ':b#<CR>', opts)

-- Create splits
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>x', ':split<CR>', opts)

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', opts)
vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', opts)
vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', opts)
vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', opts)

-- Switch between tabs using {[,]} + t
vim.keymap.set('n', '[t', ':tabprevious<CR>', opts)
vim.keymap.set('n', ']t', ':tabnext<CR>', opts)

-- Compile and preview files
vim.keymap.set('n', '<leader>c', ':w! | te compile %<CR>i', opts)
-- vim.keymap.set('n', '<leader>c', ':w! | !compile %<CR><CR>', opts)
vim.keymap.set('n', '<leader>p', ':!preview %<CR><CR>', opts)

vim.keymap.set('n', '<leader>l', '<Plug>NetrwRefresh', opts)
