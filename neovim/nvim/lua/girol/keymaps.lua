-- Remaps leader key just in case?
vim.g.mapleader = " "

local keymap = vim.keymap

-- Telescope
local builtin = require('telescope.builtin')

-- Default mappings suggested by documentation
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvim-tree
keymap.set('n', '<leader>ee', ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer
