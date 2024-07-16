return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },   -- Required
        {
            'williamboman/mason.nvim', -- Optional
            opts = {
                ui = {
                    border = "rounded",
                },
            },
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    },

    config = function()
        local lsp = require('lsp-zero').preset({
            manage_nvim_cmp = {
                set_extra_mappings = true
            }
        })

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
            -- client.server_capabilities.semanticTokensProvider = nil
        end)

        require 'lspconfig'.lua_ls.setup(lsp.nvim_lua_ls())
        -- require 'lspconfig'.omnisharp.setup {}
        -- require 'lspconfig'.jdtls.setup {}
        -- require 'lspconfig'.rust_analyzer.setup {
        --     settings = {
        --         ["rust-analyzer"] = {
        --             check = {
        --                 command = "clippy",
        --             },
        --             diagnostics = {
        --                 experimental = {
        --                     enable = true
        --                 }
        --             }
        --         }
        --     }
        -- }

        lsp.setup()
    end
}
