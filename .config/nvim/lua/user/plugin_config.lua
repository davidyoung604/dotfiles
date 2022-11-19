-- config for plugins (intentionally kept separate from *management* of plugins)

require("tokyonight").setup({
  style = "night",
  terminal_colors = true,
  transparent = true
})

require("nvim-tree").setup({})

require("lualine").setup({
  options = {
    theme = "tokyonight"
  }
})

require("bufferline").setup({})

local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
  print("Unable to load telescope")
  return
end
telescope.setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    }
  }
})
telescope.load_extension("fzf")
