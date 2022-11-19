-- Load "impatient" for performance improvements. Needs to be loaded before everything else to have effect
require("impatient")
-- Load plugins
require("user.plugins")
-- Configure plugins
require("user.plugin_config")
-- Load settings (including those involving *configured* plugins)
require("user.settings")
-- Custom key mappings
require("user.keymaps")
-- Theme. Boo US-spelling
require("user.colorscheme")
-- Completions
require("user.cmp")
-- LSP (Language Server Protocol)
require("user.lsp")
-- TreeSitter
require("user.treesitter")
-- AutoPairs
require("user.autopairs")
-- Git
require("user.gitsigns")
