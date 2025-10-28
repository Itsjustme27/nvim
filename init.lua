

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("options")
require("lazy").setup("plugins")
require('nvim-web-devicons').setup {
  color_icons = true,
  default = true,
}


-- Optional: use Material icons if available
local ok, material_icon = pcall(require, "nvim-material-icon")
if ok then
  require("nvim-web-devicons").setup {
    override = material_icon.get_icons(),
    color_icons = true,
    default = true,
  }
end



