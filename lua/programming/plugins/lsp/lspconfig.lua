return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        local keymap = vim.keymap
        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            keymap.set('n', '<leader>ca', vim.lsp.buf.code_action.apply, opts)

        end
        local capabilities = cmp_nvim_lsp.default_capabilities()
    end,
}
