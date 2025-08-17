local utils = require("util")

local config = utils.getConfig("workspaces")

local function addWorkspace(key)
  config.value[key] = vim.empty_dict()
  config.save()
end

local function removeWorkspace(key)
  vim.fn.remove(config.value, key)
  config.save()
end

local function listWorkspaces()
  vim.notify(vim.fn.join(vim.fn.keys(config.value), " - "), 0)
end

local function setWorkspaceTitle(key, title)
  config.value[key].title = title
  config.save()
end

local function setWorkspacePath(key, path)
  config.value[key].path = path
  config.save()
end

local function setWorkspaceName(key, name)
  config.value[key].name = name
  config.save()
end

local function openWorkspace(key)
  local workspace = config.value[key]

  vim.fn.chdir(workspace.path)
  vim.opt.title = true
  vim.opt.titlelen = 0
  vim.opt.titlestring = workspace.title
  vim.cmd("set title")
end

local M = {}

function M.setup()
  vim.api.nvim_create_user_command("AddWorkspace", function(opts)
    addWorkspace(opts.fargs[1])
  end, { nargs = 1 })

  vim.api.nvim_create_user_command("RemoveWorkspace", function(opts)
    removeWorkspace(opts.fargs[1])
  end, { nargs = 1 })

  vim.api.nvim_create_user_command("ListWorkspaces", function()
    listWorkspaces()
  end, { nargs = 0 })

  vim.api.nvim_create_user_command("SetWorkspaceTitle", function(opts)
    setWorkspaceTitle(opts.fargs[1], opts.fargs[2])
  end, { nargs = "*" })

  vim.api.nvim_create_user_command("SetWorkspacePath", function(opts)
    setWorkspacePath(opts.fargs[1], opts.fargs[2])
  end, { nargs = "*" })

  vim.api.nvim_create_user_command("SetWorkspaceName", function(opts)
    setWorkspaceName(opts.fargs[1], opts.fargs[2])
  end, { nargs = "*" })

  vim.api.nvim_create_user_command("OpenWorkspace", function(opts)
    openWorkspace(opts.fargs[1])
  end, { nargs = 1 })
end

return M
