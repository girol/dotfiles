return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night",
            terminal_colors = true,
        })
        vim.cmd("colorscheme tokyonight")
    end
}
