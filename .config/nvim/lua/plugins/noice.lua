return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        presets = {
            command_palette = false, -- position the cmdline and popupmenu together
            lsp_doc_border = true,   -- add a border to hover docs and signature help
        },
        views = {
            mini = {
                window = { winblend = 0, }
            }
        },
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",

        {
            "rcarriga/nvim-notify",
            config = function()
                require "notify".setup {
                    background_colour = "#181818"
                }
            end
        }
    }
}
