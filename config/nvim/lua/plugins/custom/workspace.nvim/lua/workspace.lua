local utils = require("util")

local config = utils.getConfig("workspaces")

local M = {}

function M.setup() end

vim.api.nvim_create_user_command("AddWorkspace", function(opts)
  config.value[opts.fargs[1]] = vim.empty_dict()
  config.save()
end, { nargs = 1 })

vim.api.nvim_create_user_command("RemoveWorkspace", function(opts)
  vim.fn.remove(config.value, opts.fargs[1])
  config.save()
end, { nargs = 1 })

vim.api.nvim_create_user_command("ListWorkspaces", function()
  vim.notify(vim.fn.join(vim.fn.keys(config.value), " - "), 0)
end, { nargs = 0 })

return M
