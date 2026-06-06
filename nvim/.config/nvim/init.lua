-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- load plugins
require("lazy").setup(require("plugins"))

-- load keymaps
require("keymaps")

-- load settings
require("settings")
