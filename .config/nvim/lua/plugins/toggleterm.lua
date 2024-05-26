return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup {
            open_mapping = [[<c-\>]],
            shader_terminals = true,
            autochdir = true,
            direction = 'float',
            float_opts = {
                border = 'curved',
            }
        }
    end
}
