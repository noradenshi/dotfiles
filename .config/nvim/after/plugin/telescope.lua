local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Telescope files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Telescope git files" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Telescope strings" })
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = "Telescope lsp references" })
vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = "Telescope lsp references" })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = "Telescope buffers" })
