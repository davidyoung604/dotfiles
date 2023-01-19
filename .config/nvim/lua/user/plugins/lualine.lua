return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = {
      options = {
        icons_enabled = true,
      }
    },
  },
}
