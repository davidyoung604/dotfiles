vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- misc remaps
keymap('i', 'kj', '<Esc>', opts)
keymap('v', 'kj', '<Esc>', opts)
keymap('n', '<leader>h', ':nohlsearch<CR>', opts)

keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', '<C-d>', '<C-d>zz', opts)

