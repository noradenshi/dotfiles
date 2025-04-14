return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Telescope files" })
        vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Telescope git files" })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end, { desc = "Telescope strings" })
        vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = "Telescope buffers" })
    end
}
