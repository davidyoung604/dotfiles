-- Load "impatient" for performance improvements. Needs to be loaded before everything else to have effect
require("impatient")
-- Disable builtins (e.g. netrw). These just slow down startup
require("user.disable_builtins")
-- Load plugins
require("user.plugins")
-- Configure plugins
require("user.plugin_config") -- this is for generic stuff that's so minimal it doesn't warrant its own file (yet)
require("user.neo_tree")
require("user.telescope")
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
