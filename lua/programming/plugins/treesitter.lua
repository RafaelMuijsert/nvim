return {
    'nvim-treesitter/nvim-treesitter',
    name = 'nvim-treesitter',

    config = function()
        require('nvim-treesitter.configs').setup {
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = {},
            }
        }
    end,
}
