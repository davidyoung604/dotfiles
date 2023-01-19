-- Disable builtins (e.g. netrw). These just slow down startup
require("user.disable_builtins")
-- Load plugins
require("user.lazy-nvim")
-- Load settings
require("user.settings")
-- Custom key mappings (anything that's not being handled by which-key)
require("user.keymaps")
