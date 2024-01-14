return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        mason.setup({ })
        mason_lspconfig.setup_handlers({
            function(server_name)
                require('lspconfig')[server_name].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
        })
    end
}
