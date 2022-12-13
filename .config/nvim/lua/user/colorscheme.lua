-- local colorscheme = "kanagawa"
local colorscheme = "tokyonight"

-- Safer attempted loading of the scheme. Won't bork the rest of my config if it doesn't work
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end

-- I kinda like the look of this one as well. May try it out in the future
-- https://github.com/Tsuzat/NeoSolarized.nvim

-- took these next two lines straight out of https://github.com/tcmmichaelb139/.dotfiles/blob/main/nvim/.config/nvim/lua/settings.lua
-- no idea what they do
-- vim.cmd[[highlight NormalFloat guibg=#1a1b26]]
-- vim.cmd[[highlight FloatBorder guifg=#a9b1d6 guibg=#1a1b26]]
