--[[
    # DISCLAIMER #

    After studying a bit, I found out that Lazy is the "de facto" plugin manager
for the most setups I've found.
    Therefore, there is a certain pattern of configuration among all setups.
    So, to keep things less confusing, hard to compare and maintain, I chose this
folder structure to keep the configuration clean and reproductable

    Folder structure was taken from nvim-starter-kit from bcampolo in github

]]
   --

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

--[[
    The previous name was "core" from bcampolo.
    This explicits that this is a full personal configuration
    Generic names for this kind of setup can be confusing for people (me included)
    who maybe will use this for future reference.

    > Is it "core" required for some plugin or is it just a personal file?
]]
require("girol")
