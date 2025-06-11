require("config.lazy")
require("karadi.remaps")
require("karadi.sets")
require("karadi.configs.nvimtree")
require("mason").setup()
require("wilder")
require("colorizer").setup()

-- NvimTree Setup
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
