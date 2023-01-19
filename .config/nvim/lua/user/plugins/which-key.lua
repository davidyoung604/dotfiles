local M = {
  "folke/which-key.nvim",
}

local mappings = {
  ["<leader>"] = {
    ["f"] = {
      name = "+telescope",
      ["f"] = { "<cmd> Telescope find_files <CR>", "Find files" },
      ["g"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    },
    ["b"] = {
      name = "+buffer",
      ["d"] = { "<cmd> bd <CR>", "Delete buffer" },
      ["n"] = { "<cmd> bn <CR>", "Next buffer" },
      ["p"] = { "<cmd> bp <CR>", "Previous buffer" },
      ["c"] = { "<cmd> bd <CR>", "Close buffer" },
      ["m"] = {
        name = "+move",
        ["l"] = { "<cmd> BufferLineMoveNext <CR>", "Move right" },
        ["h"] = { "<cmd> BufferLineMovePrevious <CR>", "Move left" }
      },
    },
    ["o"] = {
      name = "+open",
      ["f"] = { "<cmd> Neotree toggle <CR>", "File explorer" },
      ["g"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    },
    ["g"] = {
      name = "+goto",
      ["d"] = { "<cmd> Telescope lsp_definitions <CR>", "Definition" },
      ["D"] = { "<cmd> lua vim.lsp.buf.declaration() <CR>", "Declaration" },
      ["i"] = { "<cmd> Telescope lsp_implementations <CR>", "Implementations" },
      ["r"] = { "<cmd> Telescope lsp_references <CR>", "References" },
    },
    ["c"] = {
      name = "+code",
      ["r"] = { "<cmd> lua vim.lsp.buf.rename() <CR>", "Rename" },
      ["f"] = { "<cmd> lua vim.lsp.buf.format() <CR>", "Format Document" },
      ["d"] = {
        name = "+diagnostic",
        ["f"] = { "<cmd> lua vim.diagnostic.open_float() <CR>", "Show Diagnostic" },
        ["["] = { "<cmd> lua vim.diagnostic.goto_prev() <CR>", "Previous Diagnostic" },
        ["]"] = { "<cmd> lua vim.diagnostic.goto_next() <CR>", "Next Diagnostic" },
      },
      ["h"] = { "<cmd> lua vim.lsp.buf.hover() <CR>", "Hover" },
      ["s"] = { "<cmd> lua vim.lsp.buf.signature_help() <CR>", "Signature help" },
    },
  },
}

function M.config()
  vim.o.timeout = true
  vim.o.timeoutlen = 300

  local wk = require("which-key")

  wk.setup({})
  wk.register(mappings)
end

return M
