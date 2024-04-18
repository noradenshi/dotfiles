local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Fzf files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Fzf git files" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Fzf strings" })
