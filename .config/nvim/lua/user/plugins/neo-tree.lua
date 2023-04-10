local M = {
  "nvim-neo-tree/neo-tree.nvim",
  -- With either of these options it won't open at startup. There's also a glitch where the first
  -- file opened after startup isn't focused, but subsequent ones are.
  --cmd = "Neotree",
  --event = "VimEnter",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
}

function M.config()
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  require("neo-tree").setup({
    filesystem = {
      -- Focus the file corresponding to the current buffer
      follow_current_file = true,
      hijack_netrw_behavior = "open_default",
      --close_if_last_window = true,
      window = {
        position = "left"
      },
      -- This will use the OS level file watchers to detect changes
      use_libuv_file_watcher = false,
    }
  })
end

return M
