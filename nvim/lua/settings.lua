vim.opt.mouse = 'a'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.showmode = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.netrw_banner = 0
vim.g.tmux_navigator_no_mappings = 1

vim.g.material_style = "oceanic"
vim.cmd 'colorscheme material'
vim.opt.guicursor = "a:Cursor/Cursor"

vim.api.nvim_create_augroup("augroup", {clear = true})

-- Strip trailing whitespaces on save.
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "augroup",
    pattern = "*",
    command = "%s/\\s\\+$//e"
})

-- Enable spell checking and line length for prose.
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    group = "augroup",
    pattern = { "*.txt", "*.md", "*.tex" },
    command = "setlocal spell | setlocal tw=80"
})

-- Set disable comment continuation with 'o'.
vim.api.nvim_create_autocmd({"FileType"}, {
    group = "augroup",
    pattern = "*",
    command = "set formatoptions-=o"
})

-- Cleanup files on nvim exit.
vim.api.nvim_create_autocmd({"VimLeave"}, {
    group = "augroup",
    pattern = "*.tex",
    command = "!clean %"
})

-- Close terminal automatically if command exits 0.
vim.api.nvim_create_autocmd({"TermClose"}, {
    group = "augroup",
    pattern = "*",
    command = "if !v:event.status | exe 'bdelete! '..expand('<abuf>') | endif"
})

