return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1,

    config = function()
        require 'catppuccin'
        vim.cmd.colorscheme 'catppuccin-mocha'
    end
}
