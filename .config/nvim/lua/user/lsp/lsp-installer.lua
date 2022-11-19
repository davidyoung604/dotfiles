local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  print("Unable to load nvim-lsp-installer")
end

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities
  }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  -- there's a chance I'll need to add more in here per-server

  server:setup(opts)
end)
