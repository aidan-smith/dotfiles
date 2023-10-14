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
    pattern = { "*.txt", "*.md", "*.tex", "COMMIT_EDITMSG" },
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

