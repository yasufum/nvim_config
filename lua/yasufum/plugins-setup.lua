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

local plugins = {
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = true,
        priority = 1000
    },

    {
        "folke/which-key.nvim",
        { "folke/neoconf.nvim", cmd = "Neoconf" },
        "folke/neodev.nvim",
    }
}

require("lazy").setup(plugins)