-- Remaps leader key just in case?
vim.g.mapleader = " "

local keymap = vim.keymap

-- Imports for Plugin related keymaps
local telescope = require("telescope.builtin")
local conform = require("conform")

-- Telescope
keymap.set("n", "<leader>tf", telescope.find_files, { desc = "Telescope Find Files" })
keymap.set("n", "<leader>tg", telescope.live_grep, { desc = "Telescope Live Grep" })
keymap.set("n", "<leader>tb", telescope.buffers, { desc = "Telescope Buffers" })
keymap.set("n", "<leader>th", telescope.help_tags, { desc = "Telescope Help Tags" })

keymap.set("n", "<leader>tk", telescope.keymaps, { desc = "Telescope Keymaps" })
keymap.set("n", "<leader>tt", telescope.builtin, { desc = "Telescope Open " })

-- nvim-tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find file in file explorer" })

-- diffview
keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", { desc = "Opens diffview" })

-- conform - formatting plugin
keymap.set({ "n", "v" }, "<leader>ft", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file. Format range (Visual)" })
