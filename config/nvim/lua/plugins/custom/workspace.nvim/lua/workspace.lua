local utils = require("util")
local constants = require("constants")

local M = {}

function M.setup()
  if utils.hasConfig(constants.configName) == 0 then
    utils.setConfig(constants.configName, vim.empty_dict())
  end
end

return M
