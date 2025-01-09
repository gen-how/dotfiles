-- Restore cursor shape on exit
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    callback = function()
        vim.cmd("set guicursor=")
        vim.fn.chansend(vim.v.stderr, "\x1b[ q")
    end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "Search" })
    end,
})