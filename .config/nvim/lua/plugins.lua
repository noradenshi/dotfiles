return {
    {
        "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup()
        end
    },

    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)
        end
    },

    {
        "tpope/vim-fugitive",
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
}
