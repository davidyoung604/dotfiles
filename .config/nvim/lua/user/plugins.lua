-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Unable to load Packer")
  return
end

return packer.startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

	-- Common libs
  use { 'nvim-lua/plenary.nvim' }
	use { 'nvim-lua/popup.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }

	-- Finding files
  use { 'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = 'nvim-lua/plenary.nvim'
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use { 'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    }
  }

	-- Themes
	use { 'folke/tokyonight.nvim' }
	use { 'rebelot/kanagawa.nvim' }

  -- Display
  use { 'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use { 'akinsho/bufferline.nvim',
    tag = "v2.9.1",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Completions (cmp and plugins)
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lua' }
  -- Snippets (related to completions)
  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }

  -- LSP (Language Server Protocol)
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }
  use { 'nvim-treesitter/playground' }
  use { 'p00f/nvim-ts-rainbow' }

  -- AutoPairs
  use { 'windwp/nvim-autopairs' }

  -- Git
  use { 'lewis6991/gitsigns.nvim' }

  -- Performance
  use { 'lewis6991/impatient.nvim' }
end)
