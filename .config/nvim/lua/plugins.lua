return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup {
                transparent_background = true,
            }
            vim.cmd.colorscheme("catppuccin-mocha")

            --	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },

    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)
        end
    },

    {
        "tpope/vim-fugitive", -- Git
        config = function()
            vim.keymap.set('n', "<leader>gs", vim.cmd.Git)
        end
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
        lazy = true,   -- enable lazy load
        ft = "norg",   -- lazy load on file type
        cmd = "Neorg", -- lazy load on command
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},  -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = {      -- Manages Neorg workspaces
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
