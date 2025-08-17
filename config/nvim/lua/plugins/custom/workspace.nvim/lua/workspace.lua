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

vim.api.nvim_create_user_command("SetWorkspaceTitle", function(opts)
  local workspaceKey = opts.fargs[1]
  local workspaceTitle = opts.fargs[2]

  config.value[workspaceKey].title = workspaceTitle
  config.save()
end, { nargs = "*" })

vim.api.nvim_create_user_command("SetWorkspacePath", function(opts)
  local workspaceKey = opts.fargs[1]
  local workspacePath = opts.fargs[2]

  config.value[workspaceKey].path = workspacePath
  config.save()
end, { nargs = "*" })

vim.api.nvim_create_user_command("SetWorkspaceName", function(opts)
  local workspaceKey = opts.fargs[1]
  local workspaceName = opts.fargs[2]

  config.value[workspaceKey].name = workspaceName
  config.save()
end, { nargs = "*" })

vim.api.nvim_create_user_command("OpenWorkspace", function(opts)
  local workspaceKey = opts.fargs[1]
  local workspace = config.value[workspaceKey]

  vim.fn.chdir(workspace.path)
  vim.opt.title = true
  vim.opt.titlelen = 0
  vim.opt.titlestring = workspace.title
  vim.cmd("set title")
end, { nargs = 1 })

return M
