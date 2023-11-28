-- cmake
-- vim.keymap.set('n', '<F6>', '<cmd>!../bin/Debug/main<CR>')
-- vim.keymap.set('n', '<F5>', '<cmd>!cmake --build .<CR>')
-- vim.keymap.set('n', '<F3>', '<cmd>!cmake .. -DCMAKE_BUILD_TYPE=Debug<CR>')
-- vim.keymap.set('n', '<F4>', '<cmd>!cmake .. -DCMAKE_BUILD_TYPE=Release<CR>')

-- meson
vim.keymap.set('n', '<F3>', '<cmd>!meson setup build --buildtype=release --reconfigure<CR>')
vim.keymap.set('n', '<F4>', '<cmd>!meson setup build --buildtype=debug --reconfigure<CR>')
vim.keymap.set('n', '<F5>', '<cmd>!meson install -C build<CR>')
vim.keymap.set('n', '<F6>', '<cmd>!./bin/exe<CR>')

-- rest mostly copied from ThePrimeagen
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>no', '<cmd>noh<CR>')

-- vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv'")
-- vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv'")

-- center cursor
vim.keymap.set('n', 'J', "mzJ`z")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

-- copying to clipboard
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

-- delete with register skip
vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('v', '<leader>d', "\"_d")

vim.keymap.set('n', 'Q', "<nop>")
vim.keymap.set('n', '<C-f>', "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set('n', '<leader>f', function()
	vim.lsp.buf.format()
end)

-- navigating errors???
vim.keymap.set('n', '<C-k>', "<cmd>cnext<CR>zz")
vim.keymap.set('n', '<C-j>', "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x '%'<CR>", { silent = true })
