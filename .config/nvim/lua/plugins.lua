return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.3",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup {
                transparent_background = true,
            }
        end
    },

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive", -- Git

    --  "p00f/clangd_extensions.nvim",
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },   -- Required
            {
                'williamboman/mason.nvim', -- Optional
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },   -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },   -- Required
        }
    },

    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup {
                sections = {
                    lualine_b = { 'branch' },
                    lualine_x = { 'encoding', 'filetype' }
                }
            }
        end
    },
    {
        "nvim-neorg/neorg",
        dependencies = { "nvim-lua/plenary.nvim" },
        build = ":Neorg sync-parsers",
        -- tag = "*",
        lazy = true, -- enable lazy load
        ft = "norg", -- lazy load on file type
        cmd = "Neorg", -- lazy load on command
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                        },
                    },
                },
            }
        end
    },
}
