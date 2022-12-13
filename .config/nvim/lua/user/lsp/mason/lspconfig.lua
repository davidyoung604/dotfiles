-- for mason-lspconfig

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("Unable to load mason-lspconfig")
end

mason_lspconfig.setup({
  ensure_installed = {
    -- Ansible
    "ansiblels",
    -- Docker
    "dockerls",
    -- Go
    "gopls",
    -- JSON
    "jsonls",
    -- LaTeX
    -- "ltex", -- Does this work with texlab?
    "texlab",
    -- Lua
    "sumneko_lua",
    -- Terraform
    "terraformls",
  }
})

-- lspconfig is from NeoVim
local status_ok_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_ok_lspconfig then
  print("Unable to load lspconfig")
  return
end

mason_lspconfig.setup_handlers({
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
     lspconfig[server_name].setup {}
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  ["sumneko_lua"] = function ()
    lspconfig["sumneko_lua"].setup(
      require("user.lsp.settings.sumneko_lua")
    )
  end
})
