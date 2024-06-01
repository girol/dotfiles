-- Customization related to all vim defaults: commands, behavior and runtime

-- General setup
vim.g.mapleader = " "

-- enables mouse
vim.opt.mouse = 'a'

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Dev Experience
vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "88"
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Tabs and Spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Search behavior
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Runtime
vim.opt.updatetime = 50
