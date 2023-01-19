-- Themes/colorschemes can/should be set to lazy if they're not being actively used. The active theme seems to need to be loaded normally though.
return {
  {
    "folke/tokyonight.nvim",
    config = function()
      local tokyonight = require("tokyonight")

      tokyonight.setup({
        style = "night",
        terminal_colors = true,
        transparent = true
      })

      tokyonight.load()
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true
  },
}
