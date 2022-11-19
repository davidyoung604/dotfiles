local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("Unable to load lspconfig")
  return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
