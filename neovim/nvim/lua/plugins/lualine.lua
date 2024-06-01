return {
    -- TODO: this plugin is hijacking the vim's welcome screen
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'linrongbin16/lsp-progress.nvim'
    },

    config = function()
        require('lualine').setup {
            options = {
                theme = 'tokyonight'
            }
        }
    end
}
