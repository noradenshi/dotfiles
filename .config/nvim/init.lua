local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
require("lazy").setup("plugins", {
    change_detection = {
        notify = false,
    },
    ui = {
        border = "rounded",
    },
})
require("config").setup()

-- blade
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

-- vim.cmd('hi IlluminatedWordText guibg=none gui=underline')
-- vim.cmd('hi IlluminatedWordRead guibg=none gui=underline')
-- vim.cmd('hi IlluminatedWordWrite guibg=none gui=underline')
