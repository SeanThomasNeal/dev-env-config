local info = debug.getinfo(1, "S")
local currentFolder = info.source:sub(2):match("(.*/)") or nil
local configFile = currentFolder .. "config.json"

local config = vim.empty_dict()

local function saveConfig()
  vim.fn.writefile({ vim.json.encode(config) }, configFile)
end

local function loadConfig()
  local lines = vim.fn.readfile(configFile)
  config = vim.json.decode(vim.fn.join(lines))
end

local function setConfig(configName, value)
  config[configName] = value
  saveConfig()
end

local M = {}

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
    setConfig(configName, R.value)
  end

  return R
end

return M
