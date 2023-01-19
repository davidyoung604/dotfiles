return {
  {
    "akinsho/bufferline.nvim",
    tag = "v3.1.0",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("bufferline").setup({})
    end
  },
}
