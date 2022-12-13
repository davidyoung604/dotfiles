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

