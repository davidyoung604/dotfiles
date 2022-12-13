-- basic UI
vim.o.number = true
vim.o.relativenumber = true
vim.o.syntax = true
vim.o.hlsearch = true
vim.o.title = true
vim.o.cursorline = true
vim.o.list = true -- display tabs as '>' and spaces as '-'

-- indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true

vim.cmd [[highlight TrailingWhitespace ctermbg=red guibg=red]]
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[match TrailingWhitespace /\s\+$/]]
})
