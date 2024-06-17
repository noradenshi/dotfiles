return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
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
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        -- "rcarriga/nvim-notify",
    }
}
