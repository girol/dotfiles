return {
    -- TODO: this plugin is hijacking the vim's welcome screen
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        require('lualine').setup {
            options = {
                theme = 'tokyonight'
            }
        }
    end
}
