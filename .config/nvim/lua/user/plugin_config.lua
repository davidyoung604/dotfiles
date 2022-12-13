-- config for plugins (intentionally kept separate from *management* of plugins)

require("tokyonight").setup({
  style = "night",
  terminal_colors = true,
  transparent = true
})

require("lualine").setup({
  options = {
    theme = "tokyonight"
  }
})

require("bufferline").setup({})
