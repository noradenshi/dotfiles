return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup {
            transparent_background = true,

            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "lavender",
                },
                harpoon = true,
                mason = true,
                noice = true,
                which_key = true,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        }
        vim.cmd.colorscheme("catppuccin-mocha")

        --	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
