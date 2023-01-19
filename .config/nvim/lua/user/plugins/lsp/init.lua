local M = {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim"
  },
}

function M.config()
  require("mason").setup({})

  local lspconfig = require("lspconfig")
  local mason_lspconfig = require("mason-lspconfig")

  mason_lspconfig.setup({
    ensure_installed = {
      -- Populate this with any language servers desired immediately
    }
  })
  mason_lspconfig.setup_handlers({
    function (server_name)
      lspconfig[server_name].setup({})
    end,
    ["sumneko_lua"] = function ()
      lspconfig["sumneko_lua"].setup(
        require("user.plugins.lsp.servers")["sumneko_lua"]
      )
    end
  })
end

return M
