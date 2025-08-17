local utils = require("util")

local workspacesConfig = vim.empty_dict()

local function saveConfig()
  utils.setConfig("workspaces", workspacesConfig)
end

local M = {}

function M.setup()
  if utils.hasConfig("workspaces") == 0 then
    utils.setConfig("workspaces", workspacesConfig)
  else
    workspacesConfig = utils.getConfig("workspaces")
  end
end

vim.api.nvim_create_user_command("AddWorkspace", function(opts)
  workspacesConfig[opts.fargs[1]] = vim.empty_dict()
  saveConfig()
end, { nargs = 1 })

vim.api.nvim_create_user_command("RemoveWorkspace", function(opts)
  vim.fn.remove(workspacesConfig, opts.fargs[1])
  saveConfig()
end, { nargs = 1 })

vim.api.nvim_create_user_command("ListWorkspaces", function()
  vim.notify(vim.fn.join(vim.fn.keys(workspacesConfig), " - "), 0)
end, { nargs = 0 })

return M
