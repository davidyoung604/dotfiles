local M = {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  tag = "0.1.1",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
}

function M.config()
  require("telescope").setup({
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case"
      }
    }
  })

  require("telescope").load_extension("fzf")
end

return M
