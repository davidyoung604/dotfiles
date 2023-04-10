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
    ["lua_ls"] = function ()
      lspconfig["lua_ls"].setup(
        require("user.plugins.lsp.servers")["lua_ls"]
      )
    end
  })
end

return M
