local info = debug.getinfo(1, "S")
local currentFolder = info.source:sub(2):match("(.*/)") or nil
local configFile = currentFolder .. "config.json"

local config = vim.empty_dict()

local M = {}

function M.setup()
  if vim.fn.filereadable(configFile) == 0 then
    vim.fn.writefile({ vim.json.encode(config) }, configFile, "a")
  else
    local lines = vim.fn.readfile(configFile)
    local undecoded = vim.fn.join(lines)
    config = vim.json.decode(undecoded)
  end
end

function M.getConfig(configName)
  return vim.fn.get(config, configName)
end

return M
