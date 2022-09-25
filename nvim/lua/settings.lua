vim.opt.mouse = 'a'
vim.opt.undofile = true

vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.showmode = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.g.tmux_navigator_no_mappings = 1

vim.g.material_style = "oceanic"
vim.cmd 'colorscheme material'

vim.api.nvim_create_augroup("augroup", {clear = true})

-- Strip trailing whitespaces on save
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "augroup",
    pattern = "*",
    command = "%s/\\s\\+$//e"
})

-- Enable spell checking for plaintext files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    group = "augroup",
    pattern = { "*.txt", "*.md", "*.tex" },
    command = "setlocal spell"
})
