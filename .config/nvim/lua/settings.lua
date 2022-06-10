local options = {

    mouse = 'a',
    undofile = true,

    smartindent = true,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,

    number = true,
    relativenumber = true,
    cursorline = true,

    termguicolors = true,
    showmode = false,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.material_style = "oceanic"
vim.cmd 'colorscheme material'

-- vim.api.nvim_create_augroup("augroup", {clear = true})
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
