return {
    vim.keymap.set('n', '<leader>b', '<cmd>%!basm<cr>',
        { desc = "basm format" })
}
