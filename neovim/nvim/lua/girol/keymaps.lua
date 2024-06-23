-- Remaps leader key just in case?
vim.g.mapleader = " "

local keymap = vim.keymap

-- Imports for Plugin related keymaps
local telescope = require("telescope.builtin")
local conform = require("conform")

-- Telescope
-- Default mappings suggested by documentation
keymap.set("n", "<leader>ff", telescope.find_files, {})
keymap.set("n", "<leader>fg", telescope.live_grep, {})
keymap.set("n", "<leader>fb", telescope.buffers, {})
keymap.set("n", "<leader>fh", telescope.help_tags, {})

-- nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer

-- diffview
keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", { desc = "Opens diffview"})

-- conform - formatting plugin
keymap.set({ "n", "v" }, "<leader>ft", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file. Format range (Visual)" })
