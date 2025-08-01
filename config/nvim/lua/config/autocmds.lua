-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    local cwd = vim.fn.getcwd()
    local parts = vim.fn.split(cwd, "[\\/]")
    local projectFolder = vim.fn.get(parts, -1, "Error")

    vim.opt.title = true
    vim.opt.titlelen = 0
    vim.opt.titlestring = projectFolder
    vim.cmd("set title")
  end,
})
