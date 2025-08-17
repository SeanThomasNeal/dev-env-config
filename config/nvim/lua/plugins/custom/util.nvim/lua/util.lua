local info = debug.getinfo(1, "S")
local currentFolder = info.source:sub(2):match("(.*/)") or nil
local configFile = currentFolder .. "config.json"

local config = vim.empty_dict()

local M = {}

local function saveConfig()
  vim.fn.writefile({ vim.json.encode(config) }, configFile)
end

local function loadConfig()
  local lines = vim.fn.readfile(configFile)
  config = vim.json.decode(vim.fn.join(lines))
end

function M.setup()
  if vim.fn.filereadable(configFile) == 1 then
    loadConfig()
  else
    saveConfig()
  end
end

function M.getConfig(configName)
  local R = {
    value = config[configName] or vim.empty_dict(),
  }

  function R.save()
    M.setConfig(configName, R.config)
  end

  return R
end

function M.hasConfig(configName)
  return vim.fn.has_key(config, configName)
end

function M.setConfig(configName, value)
  config[configName] = value
  saveConfig()
end

return M
