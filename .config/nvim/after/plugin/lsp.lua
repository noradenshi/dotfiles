local lsp = require('lsp-zero').preset({
    manage_nvim_cmp = {
        set_extra_mappings = true
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    -- client.server_capabilities.semanticTokensProvider = nil
end)
-- lsp.skip_server_setup({'clangd'})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--
-- require'lspconfig'.eslint.setup{}
-- require'lspconfig'.tsserver.setup{}

-- require'lspconfig'.omnisharp.setup{}

lsp.setup()
-- require('clangd_extensions').setup()
