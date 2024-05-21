require("girol/set")

local plugins_path = "girol.plugins"

-- Configures Lazy Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup(plugins_path, opts)
-- END Lazy

-- TODO: Find a way to start this in another file
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
