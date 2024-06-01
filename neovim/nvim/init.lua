--[[
    # DISCLAIMER #

    After studying a bit, I found out that Lazy is the "de facto" plugin manager
for the most setups I've found.
    Therefore, there is a certain pattern of configuration among all setups.
    So, to keep things less confusing, hard to compare and maintain, I chose this
folder structure to keep the configuration clean and reproductable

Folder structure was taken from nvim-starter-kit from bcampolo in github

]]--

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

-- This has to be set before initializing lazy
vim.g.mapleader = " "

require("lazy").setup("plugins", opts)
-- END Lazy

-- Personal configuratio are NOT loaded by lazy
-- require("core.options")
-- require("core.keymaps")