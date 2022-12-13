local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print("Unable to load mason")
end

mason.setup({})

require("user.lsp.mason.lspconfig")
